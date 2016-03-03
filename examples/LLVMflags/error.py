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
#Analysis Passes that unnecessary
'-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only',
 '-instcount', '-module-debuginfo', '-no-aa',
 '-print-alias-sets', '-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-module', '-print-used-types',

#Analysis Passes that might be useful
'-aa-eval', '-debug-aa', '-iv-users', '-scev-aa',

#Utility Passes that unnecessary
'-deadarghaX0r', '-extract-blocks', '-instnamer',
'-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only'

#Transform passes that unecessary
'-codegenprepare', 

#Transform passes that might be useful
'-internalize', '-gvn', '-loop-reduce', '-mem2reg', '-memcpyopt', '-sink', 

#Other passes that have special use cases
'-verify', 

#These passes don't have much documentation
'-asan', '-asan-module', '-dfsan','-msan', '-tsan', '-bounds-checking', '-generic-to-nvvm', 
'-datalayout', '-debug-ir', '-insert-gcov-profiling', '-metarenamer', '-sample-profile',
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
'-libcall-aa', '-licm', '-lint', '-loop-deletion', '-loop-extract', '-loop-extract-single', '-loop-idiom', 
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

args_list = "-loop-rotate -sroa -licm -loop-vectorize -licm -basicaa".split(' ')


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

    #.ll to .bc
    output = self.call_program('opt ' + parameterList + ' ' + ll_int + ' -o ' + bc_int, limit = 5)
    print 'converting .ll to .bc took ' + str(output['time']) + ' seconds'
    if output['time'] == float('inf'):
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
    if output['returncode'] != 0:
      print "error at .ll to .bc step\n\n\n\n"
      if (len(parameterList) == 2):
        sys.exit()
      return opentuner.resultsdb.models.Result(time=len(parameterList))

    return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

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
    global args_list
    args_list = list(set(args_list))
    for i in args_blacklist:
      if i in args_list:
        args_list.remove(i)
    return args_list

      
if __name__ == '__main__':
  opentuner.init_logging()
  args = parser.parse_args()
  LLVMFlagsTuner.main(args)
  
