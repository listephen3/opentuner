#!/usr/bin/python
import opentuner
import argparse
import sys
import time
from opentuner.search import manipulator


source_name = 'matrixmultiply.cpp'
source_file_name = source_name.split('.')[0]
ll_int = source_file_name + '.ll'
bc_int = source_file_name + '.bc'
s_int = source_file_name + '.s'
o_int = source_file_name + '.o'
out_int = source_file_name + '.out'

parser = argparse.ArgumentParser(parents=opentuner.argparsers())
args_blacklist = [
'-aa-eval', '-asan', '-asan-module', '-bounds-checking', '-codegenprepare', 

'-datalayout', '-deadarghaX0r', '-debug-aa', '-debug-ir', '-dfsan', '-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only', 

'-extract-blocks', '-generic-to-nvvm', '-gvn', '-insert-gcov-profiling', '-internalize', '-iv-users',

'-sample-profile',

'-mem2reg', '-memcpyopt', '-metarenamer',  '-module-debuginfo', '-msan', '-no-aa',

'-print-alias-sets', '-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-module', '-print-used-types',

#nothing here for reassociate

'-tsan', '-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only'
]
#

args_list = [
'-aa-eval', '-adce', '-alloca-hoisting', '-always-inline', '-argpromotion', '-asan', '-asan-module',  '-basicaa', '-basiccg', '-bb-vectorize', '-block-freq', '-bounds-checking', '-branch-prob', '-break-crit-edges', '-codegenprepare', '-constmerge', 

'-constprop', '-correlated-propagation', '-cost-model', '-count-aa', 

'-da', '-datalayout', '-dce', '-deadargelim', '-deadarghaX0r', '-debug-aa', '-debug-ir', '-delinearize', '-dfsan', '-die', '-domfrontier', '-domtree', '-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only', '-dse',

'-early-cse', '-extract-blocks', '-functionattrs', '-generic-to-nvvm', '-globaldce', '-globalopt', '-globalsmodref-aa', '-gvn', '-indvars', '-inline', '-inline-cost', '-insert-gcov-profiling', '-instcombine', '-instcount', '-instnamer', '-instsimplify', '-internalize', '-intervals', '-ipconstprop', '-ipsccp', '-iv-users',

'-jump-threading', '-lazy-value-info', '-lcssa', '-libcall-aa', '-licm', '-lint', '-loop-deletion', '-loop-extract', '-loop-extract-single', '-loop-idiom', '-loop-instsimplify', '-loop-reduce', '-loop-reroll', '-loop-rotate', '-loop-simplify', '-loop-unroll', '-loop-unswitch', '-loop-vectorize', '-loops', '-lower-expect', '-loweratomic', '-lowerinvoke', '-lowerswitch',

'-mem2reg', '-memcpyopt', '-memdep', '-mergefunc', '-mergereturn', '-metarenamer', '-module-debuginfo', '-msan', '-no-aa', '-notti', '-nvvm-reflect', '-objc-arc', '-objc-arc-aa', '-objc-arc-apelim', '-objc-arc-contract', '-objc-arc-expand', 

'-partial-inliner', '-partially-inline-libcalls', '-postdomtree', '-preverify', '-print-alias-sets', '-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-module', '-print-used-types', '-prune-eh', 

'-reassociate', '-reg2mem', '-regions', '-sample-profile', '-scalar-evolution', '-scalarrepl', '-scalarrepl-ssa', '-sccp', '-scev-aa', '-simplifycfg', '-sink', '-slp-vectorizer', '-sroa', '-strip', '-strip-dead-debug-info', '-strip-dead-prototypes', '-strip-debug-declare', '-strip-nondebug', '-structurizecfg', 

'-tailcallelim', '-targetlibinfo', '-tbaa', '-tsan', '-verify', '-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only'
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

    print parameterList
    
    #.c to .ll
    output = self.call_program('clang -O0 -S -emit-llvm ' + source_name + ' -o ' + ll_int)
    print 'converting .c to .ll took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print output
      print "error at .c to .ll step"
      sys.exit()
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.ll to .bc
    output = self.call_program('opt ' + parameterList + ' ' + ll_int + ' -o ' + bc_int)
    print 'converting .ll to .bc took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print output
      print "error at .ll to .bc step"
      sys.exit()
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.bc to .s
    output = self.call_program('llc ' + bc_int + ' -o ' + s_int)
    print 'converting .bc to .s took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print output
      print "error at .bc to .s step"
      sys.exit()
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.s to .o
    output = self.call_program('as ' + s_int + ' -o ' + o_int)
    print 'converting .s to .o took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print output
      print "error at s to .o step"
      sys.exit()
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.o to .out
    output = self.call_program('clang -lstdc++ -lm ' + o_int + ' -o ' + out_int)
    print 'converting .o to .out took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print output
      print "error at .o to .out"
      sys.exit()
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #finally running the output program
    output = self.call_program('./' + out_int)
    print 'running the code took ' + str(output['time']) + ' seconds'
    if output['returncode'] != 0:
      print output
      print "error at running code step"
      sys.exit()
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR') 

    #parameterList represents the parameters we're passing into opt
    return opentuner.resultsdb.models.Result(time=output['time'])

  def manipulator(self):
    m = manipulator.ConfigurationManipulator()
    flagListDuplicate = []
    for i in range(3):
      flagListDuplicate.extend(self.flagList)

    for f in self.flagList:
      m.add_parameter(manipulator.IntegerParameter(f, 0, 3))
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
  
