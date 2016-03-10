#!/usr/bin/python
import opentuner
import argparse
import sys
import time
from opentuner.search import manipulator

timeout = 5 #seconds
source_name = 'raytracer.cpp'
source_file_name = source_name.split('.')[0]
ll_int = source_file_name + '.ll'
bc_int = source_file_name + '.bc'
s_int = source_file_name + '.s'
o_int = source_file_name + '.o'
out_int = source_file_name + '.out'

parser = argparse.ArgumentParser(parents=opentuner.argparsers())
args_blacklist = [
#Analysis Passes that might be useful

#Transform passes that might be useful

#Analysis Passes that unnecessary

#Utility Passes that unnecessary

#Transform passes that unnecessary

#These passes don't have much documentation
'-aa', '-aa-eval', '-add-discriminators', '-alignment-from-assumptions', '-alloca-hoisting', '-always-inline', 
'-amdgpu-annotate-uniform', '-amdgpu-promote-alloca', '-amdgpu-annotate-kernel-features', 
'-asan', '-asan-module', '-assumption-cache-tracker', '-atomic-expand', '-bb-vectorize',  
'-bool-ret-to-int', '-bounds', '-bounds-checking', '-break-crit-edges', '-cfl-aa', 
'-codegenprepare', '-consthoist', '-cost-model', '-cross-dso-cfi', '-deadarghaX0r', 
'-delinearize', '-demanded-bits', '-dfsan', '-divergence', '-dot-callgraph', '-dot-cfg', 
'-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', 
'-dot-regions', '-dot-regions-only', '-dwarfehprepare', '-elim-avail-extern', '-external-aa', 
'-extract-blocks', '-flattencfg', '-float2int', '-forceattrs', '-function-import', 
'-generic-to-nvvm', '-globals-aa', '-inferattrs', '-insert-gcov-profiling', '-instcount', 
'-instnamer', '-instrprof', '-instsimplify', '-internalize', '-intervals', '-irce', '-iv-users', 
'-lint', '-liveintervals', '-livevars', '-load-combine', '-loop-accesses', '-loop-data-prefetch', 
'-loop-distribute', '-loop-extract', '-loop-extract-single', '-loop-interchange', 
'-loop-load-elim', '-loop-reduce', '-loop-reroll', '-loop-simplifycfg', '-loop-versioning', 
'-loop-versioning-licm', '-lower-expect', '-loweratomic', '-lowerbitsets', '-lowerinvoke', 
'-lowerswitch', '-machinedomtree', '-machinepostdomtree', '-memoryssalazy', '-mergereturn', 
'-metarenamer', '-mldst-motion', '-module-debuginfo', '-msan', '-nary-reassociate', 
'-nvptx-assign-valid-global-names', '-nvptx-favor-non-generic', '-nvptx-lower-aggr-copies', 
'-nvptx-lower-alloca', '-nvptx-lower-kernel-args', '-nvvm-reflect', '-objc-arc', '-objc-arc-aa', 
'-objc-arc-apelim', '-objc-arc-contract', '-objc-arc-expand', '-pa-eval', '-partial-inliner', 
'-partially-inline-libcalls', '-pgo-instr-gen', '-pgo-instr-use', 
'-place-backedge-safepoints-impl', '-place-safepoints', '-postdomtree', '-print-alias-sets', 
'-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', 
'-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-memderefs', 
'-print-memoryssa', '-print-module', '-reg2mem', '-rewrite-statepoints-for-gc', 
'-rewrite-symbols', '-rpo-functionattrs', '-safe-stack', '-sample-profile', '-sancov', 
'-scalarizer', '-scalarrepl-ssa', '-scev-aa', '-scoped-noalias', 
'-separate-const-offset-from-gep', '-sgpr-copies', '-si-annotate-control-flow', 
'-si-fix-cf-live-intervals', '-si-fix-sgpr-live-ranges', '-si-fold-operands', '-si-i1-copies', 
'-si-insert-nops', '-si-insert-waits', '-si-load-store-opt', '-si-lower-control-flow', '-sink', 
'-sjljehprepare', '-slotindexes', '-slsr', '-speculative-execution', '-strip', 
'-strip-dead-debug-info', '-strip-debug-declare', '-strip-nondebug', '-structurizecfg', 
'-tsan', '-tti', '-unreachable-mbb-elimination', '-view-callgraph', '-view-cfg', '-view-cfg-only', 
'-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', 
'-view-regions-only', '-wholeprogramdevirt', '-winehprepare', '-x86-winehstate'
#Used separately in the code below
'-targetlibinfo', '-verify', 
]

args_list = [
'-aa', '-aa-eval', '-adce', '-add-discriminators', '-alignment-from-assumptions', 
'-alloca-hoisting', '-always-inline', '-amdgpu-annotate-kernel-features', 
'-amdgpu-annotate-uniform', '-amdgpu-promote-alloca', '-argpromotion', '-asan', '-asan-module', 
'-assumption-cache-tracker', '-atomic-expand', '-barrier', '-basicaa', '-basiccg', 
'-bb-vectorize', '-bdce', '-block-freq', '-bool-ret-to-int', '-bounds-checking', '-branch-prob', 
'-break-crit-edges', '-cfl-aa', '-codegenprepare', '-consthoist', '-constmerge', '-constprop', 
'-correlated-propagation', '-cost-model', '-cross-dso-cfi', '-da', '-dce', '-deadargelim', 
'-deadarghaX0r', '-delinearize', '-demanded-bits', '-dfsan', '-die', '-divergence', 
'-domfrontier', '-domtree', '-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', 
'-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only', 
'-dse', '-dwarfehprepare', '-early-cse', '-elim-avail-extern', '-external-aa', '-extract-blocks', 
'-flattencfg', '-float2int', '-forceattrs', '-function-import', '-functionattrs', 
'-generic-to-nvvm', '-globaldce', '-globalopt', '-globals-aa', '-gvn', '-indvars', '-inferattrs', 
'-inline', '-insert-gcov-profiling', '-instcombine', '-instcount', '-instnamer', '-instrprof', 
'-instsimplify', '-internalize', '-intervals', '-ipconstprop', '-ipsccp', '-irce', '-iv-users', 
'-jump-threading', '-lazy-value-info', '-lcssa', '-licm', '-lint', '-liveintervals', '-livevars', 
'-load-combine', '-loop-accesses', '-loop-data-prefetch', '-loop-deletion', '-loop-distribute', 
'-loop-extract', '-loop-extract-single', '-loop-idiom', '-loop-instsimplify', '-loop-interchange', 
'-loop-load-elim', '-loop-reduce', '-loop-reroll', '-loop-rotate', '-loop-simplify', 
'-loop-simplifycfg', '-loop-unroll', '-loop-unswitch', '-loop-vectorize', '-loop-versioning', 
'-loop-versioning-licm', '-loops', '-lower-expect', '-loweratomic', '-lowerbitsets', 
'-lowerinvoke', '-lowerswitch', '-machinedomtree', '-machinepostdomtree', '-mem2reg', '-memcpyopt', 
'-memdep', '-memoryssalazy', '-mergefunc', '-mergereturn', '-metarenamer', '-mldst-motion', 
'-module-debuginfo', '-msan', '-nary-reassociate', '-nvptx-assign-valid-global-names', 
'-nvptx-favor-non-generic', '-nvptx-lower-aggr-copies', '-nvptx-lower-alloca', 
'-nvptx-lower-kernel-args', '-nvvm-reflect', '-objc-arc', '-objc-arc-aa', '-objc-arc-apelim', 
'-objc-arc-contract', '-objc-arc-expand', '-pa-eval', '-partial-inliner', 
'-partially-inline-libcalls', '-pgo-instr-gen', '-pgo-instr-use', 
'-place-backedge-safepoints-impl', '-place-safepoints', '-postdomtree', '-print-alias-sets', 
'-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', 
'-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-memderefs', 
'-print-memoryssa', '-print-module', '-prune-eh', '-reassociate', '-reg2mem', '-regions', 
'-rewrite-statepoints-for-gc', '-rewrite-symbols', '-rpo-functionattrs', '-safe-stack', 
'-sample-profile', '-sancov', '-scalar-evolution', '-scalarizer', '-scalarrepl', 
'-scalarrepl-ssa', '-sccp', '-scev-aa', '-scoped-noalias', '-separate-const-offset-from-gep', 
'-sgpr-copies', '-si-annotate-control-flow', '-si-fix-cf-live-intervals', 
'-si-fix-sgpr-live-ranges', '-si-fold-operands', '-si-i1-copies', '-si-insert-nops', 
'-si-insert-waits', '-si-load-store-opt', '-si-lower-control-flow', '-simplifycfg', '-sink', 
'-sjljehprepare', '-slotindexes', '-slp-vectorizer', '-slsr', '-speculative-execution', '-sroa', 
'-strip', '-strip-dead-debug-info', '-strip-dead-prototypes', '-strip-debug-declare', 
'-strip-nondebug', '-structurizecfg', '-tailcallelim', '-targetlibinfo', '-tbaa', '-tsan', 
'-tti', '-unreachable-mbb-elimination', '-verify', '-view-callgraph', '-view-cfg', 
'-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', 
'-view-regions', '-view-regions-only', '-wholeprogramdevirt', '-winehprepare', '-x86-winehstate'
]


class LLVMFlagsTuner(opentuner.measurement.MeasurementInterface):
  def __init__(self, *pargs, **kwargs):
      super(LLVMFlagsTuner, self).__init__(*pargs, **kwargs)
      self.flagList = self.getArgs()

  def run(self, desired_result, input, limit):
    #pass'
    cfg = desired_result.configuration.data
    counter = {}
    parameterList = '-targetlibinfo '
    for i in self.flagList:
      counter[i] = 0

    #we're iterating through the duplicate of flags here
    #and if it's appeared less than the specified # of times, we
    #add it to the parameter List
    for i in cfg['order']:
      if counter[i] < cfg[i]:
        parameterList += i + ' '
      counter[i] += 1

    parameterList += '-verify'
    print parameterList

    '''
    #.c to .ll
    output = self.call_program('./clang -O0 -S -emit-llvm ' + source_name + ' -o ' + ll_int, limit = timeout)
    print 'converting .c to .ll took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at .c to .ll step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
    '''

    '''
    #.ll to .bc
    output = self.call_program('./opt ' + parameterList + ' ' + ll_int + ' -o ' + bc_int, limit = timeout)
    #print 'converting .ll to .bc took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at .ll to .bc step\n"
      print output['stderr']
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.bc to .s
    output = self.call_program('./llc ' + bc_int + ' -o ' + s_int, limit = timeout)
    #print 'converting .bc to .s took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at .bc to .s step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.s to .o
    output = self.call_program('as ' + s_int + ' -o ' + o_int, limit = timeout)
    #print 'converting .s to .o took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at s to .o step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.o to .out
    output = self.call_program('./clang -lstdc++ -lm ' + o_int + ' -o ' + out_int, limit = timeout)
    #print 'converting .o to .out took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at .o to .out\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    argument = './' + out_int
    output = self.call_program('ts=$(date +%s%N) ; ' + argument +  ' ; tt=$((($(date +%s%N) - $ts)/1000000)) ; echo \"$tt\"', limit = timeout)
    if ('ERROR' in output['stdout']) or output['returncode'] != 0:
      print 'error at running code\n'
      print output['stderr']
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
    else:
      print 'running the code took ' + str(float(output['stdout'])/1000) + ' seconds\n'
      return opentuner.resultsdb.models.Result(time=float(output['stdout'])/1000)
    '''
    '''
    output = self.call_program('./clang -O2 -lm -lstdc++ ' + source_name + ' -o ' + 'test.out', limit = timeout)
    if output['returncode'] != 0:
      print "error at compilation"
      print output['stderr']
      '''

    argument = './test.out'
    output = self.call_program('ts=$(date +%s%N) ; ' + argument +  ' ; tt=$((($(date +%s%N) - $ts)/1000000)) ; echo \"$tt\"', limit = timeout)
    print 'running the code took ' + str(float(output['stdout'])/1000) + ' seconds\n'
    return opentuner.resultsdb.models.Result(time=float(output['stdout'])/1000)




  def manipulator(self):
    m = manipulator.ConfigurationManipulator()
    flagListDuplicate = []
    for i in range(6):
      flagListDuplicate.extend(self.flagList)

    for f in self.flagList:
      m.add_parameter(manipulator.IntegerParameter(f, 0, 6))
    m.add_parameter(manipulator.PermutationParameter('order', flagListDuplicate))
    
    return m

  def getArgs(self):
    """
    output = self.call_program('opt --help')['stdout']
    output = output.split("\n")
    args_list = []
    readingArgs = False
    leadingSpaces = 0

    for i in output:
      if "Optimizations available:" in i:
        readingArgs = True
        leadingSpaces = len(i) - len(i.lstrip(' '))
        continue
      if readingArgs:
        if (len(i) - len(i.lstrip(' '))) > leadingSpaces:
          args_list.append(i.lstrip(' ').split(' ')[0])
        else:
          break
    """
    for i in args_blacklist:
      if i in args_list:
        args_list.remove(i)
    return args_list
    

      
if __name__ == '__main__':
  opentuner.init_logging()
  args = parser.parse_args()
  #call_program()
  LLVMFlagsTuner.main(args)
  
