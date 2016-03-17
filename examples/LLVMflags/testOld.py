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
'-iv-users', '-scev-aa',
#Transform passes that might be useful
'-internalize', '-loop-reduce', '-sink', 
#Analysis Passes that unnecessary
'-aa-eval', '-debug-aa', '-instcount', '-module-debuginfo', '-lint', '-delinearize', '-cost-model', 
'-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only',
'-print-alias-sets', '-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-module', '-print-used-types',
#Utility Passes that unnecessary
'-deadarghaX0r', '-extract-blocks', '-instnamer', '-reg2mem', 
'-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only', 
#Transform passes that unnecessary
'-codegenprepare', '-break-crit-edges', '-loop-extract', '-loop-extract-single',  
'-strip', '-strip-dead-debug-info', '-strip-debug-declare', '-strip-nondebug',
#These passes don't have much documentation
'-asan', '-asan-module', '-dfsan','-msan', '-tsan', '-bounds-checking', '-generic-to-nvvm', 
'-datalayout', '-debug-ir', '-insert-gcov-profiling', '-metarenamer', '-sample-profile', '-structurizecfg',
#Used separately in the code below
'-verify', 
]

args_list = [
'-aa-eval', '-adce', '-alloca-hoisting', '-always-inline', '-argpromotion', '-asan', '-asan-module', 
'-basicaa', '-basiccg', '-bb-vectorize', '-block-freq', '-bounds-checking', '-branch-prob', 
'-break-crit-edges', '-codegenprepare', '-constmerge', '-constprop', '-correlated-propagation', 
'-cost-model', '-count-aa', '-da', '-datalayout', '-dce', '-deadargelim', '-deadarghaX0r', '-debug-aa', 
'-debug-ir', '-delinearize', '-dfsan', '-die', '-domfrontier', '-domtree', '-dot-callgraph', '-dot-cfg', 
'-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', 
'-dot-regions-only', '-dse', '-early-cse', '-extract-blocks', '-functionattrs', '-generic-to-nvvm', 
'-globaldce', '-globalopt', '-globalsmodref-aa', '-gvn', '-indvars', '-inline', '-inline-cost', 
'-insert-gcov-profiling', '-instcombine', '-instcount', '-instnamer', '-instsimplify', '-internalize', 
'-intervals', '-ipconstprop', '-ipsccp', '-iv-users', '-jump-threading', '-lazy-value-info', '-lcssa', 
'-libcall-aa', '-licm', '-lint', '-loop-deletion', '-loop-extract', '-loop-idiom', 
'-loop-instsimplify', '-loop-reduce', '-loop-reroll', '-loop-rotate', '-loop-simplify', '-loop-unroll', 
'-loop-unswitch', '-loop-vectorize', '-loops', '-lower-expect', '-loweratomic', '-lowerinvoke', 
'-lowerswitch', '-mem2reg', '-memcpyopt', '-memdep', '-mergefunc', '-mergereturn', 
'-metarenamer', '-module-debuginfo', '-msan', '-no-aa', '-notti', '-nvvm-reflect', '-objc-arc', 
'-objc-arc-aa', '-objc-arc-apelim', '-objc-arc-contract', '-objc-arc-expand', '-partial-inliner', 
'-partially-inline-libcalls', '-postdomtree', '-preverify', '-print-alias-sets', '-print-bb', '-print-callgraph', 
'-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', 
'-print-function', '-print-memdeps', '-print-module', '-print-used-types', '-prune-eh', '-reassociate', 
'-reg2mem', '-regions', '-sample-profile', '-scalar-evolution', '-scalarrepl', '-scalarrepl-ssa', '-sccp', 
'-scev-aa', '-simplifycfg', '-sink', '-slp-vectorizer', '-sroa', '-strip', '-strip-dead-debug-info', 
'-strip-dead-prototypes', '-strip-debug-declare', '-strip-nondebug', '-structurizecfg', '-tailcallelim', 
'-targetlibinfo', '-tbaa', '-tsan', '-verify', '-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', 
'-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only'
]

class LLVMFlagsTuner(opentuner.measurement.MeasurementInterface):
  def __init__(self, *pargs, **kwargs):
      super(LLVMFlagsTuner, self).__init__(*pargs, **kwargs)
      self.flagList = self.getArgs()

  def run(self, desired_result, input, limit):
    cfg = desired_result.configuration.data
    counter = {}
    parameterList = ''
    for i in self.flagList:
      counter[i] = 0

    #we're iterating through the duplicate of flags here
    #and if it's appeared less than the specified # of times, we
    #add it to the parameter List
    for i in cfg['order']:
      if counter[i] < cfg[i]:
        parameterList += i + ' '
      counter[i] += 1

    parameterList += ' -verify'

    print parameterList
    
    '''
    #.c to .ll
    output = self.call_program('clang -O0 -S -emit-llvm ' + source_name + ' -o ' + ll_int, limit = timeout)
    print 'converting .c to .ll took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at .c to .ll step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
    '''

    #.ll to .bc
    output = self.call_program('opt ' + parameterList + ' ' + ll_int + ' -o ' + bc_int, limit = timeout)
    #print 'converting .ll to .bc took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at .ll to .bc step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.bc to .s
    output = self.call_program('llc ' + bc_int + ' -o ' + s_int, limit = timeout)
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
    output = self.call_program('clang -lstdc++ -lm ' + o_int + ' -o ' + out_int, limit = timeout)
    #print 'converting .o to .out took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print "error at .o to .out\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #finally running the output program
    argument = './' + out_int
    output = self.call_program('ts=$(date +%s%N) ; ' + argument +  ' ; tt=$((($(date +%s%N) - $ts)/1000000)) ; echo \" $tt\"', limit = timeout)
    #runtime is printed in ms, right after a space
    #runtime is the last to be printed, so we take output.split(' ')[-1]
    if ('ERROR' in output['stdout']) or output['returncode'] != 0:
      print 'error at running code\n'
      print output['stderr']
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
    else:
      runtime = float(output['stdout'].split(' ')[-1])
      print 'running the code took ' + str(runtime/1000) + ' seconds\n'
      return opentuner.resultsdb.models.Result(time=runtime/1000)

    """
    output = self.call_program('g++ -O2 -lm ' + source_name + ' -o ' + 'test.out', limit = timeout)
    if output['returncode'] != 0:
      print "error at compilation"
    
    output = self.call_program('./' + 'test.out', limit = timeout)
    print 'running the code took ' + str(output['time']) + ' seconds\n'
    return opentuner.resultsdb.models.Result(time=output['time'])
    """


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
  
