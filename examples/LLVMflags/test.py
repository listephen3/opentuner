#!/usr/bin/python
#for LLVM v3.9svn (used March 16 2016 build)
#uses both regular passes and hidden flags
import opentuner
import argparse
import sys
import time
from opentuner.search import manipulator

timeout = 5 #seconds
source_name = 'raytracer.cpp'
source_file_name = source_name.split('.')[0]
ll_int = source_file_name + '.ll'
ll_optimized_int = source_file_name + '_optimized.ll'
o_int = source_file_name + '.o'
out_int = source_file_name + '.out'
first_run = True

parser = argparse.ArgumentParser(parents=opentuner.argparsers())
args_blacklist = [
#Unnecessary passes
'-amdgpu-annotate-uniform', '-amdgpu-promote-alloca', '-amdgpu-annotate-kernel-features',
'-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only',
'-objc-arc', '-objc-arc-aa', '-objc-arc-apelim', '-objc-arc-contract', '-objc-arc-expand', 
'-nvptx-assign-valid-global-names', '-nvptx-favor-non-generic', '-nvptx-lower-aggr-copies', '-nvptx-lower-alloca', '-nvptx-lower-kernel-args',
'-print-alias-sets', '-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-memderefs', '-print-memoryssa', '-print-module',
'-si-annotate-control-flow', '-si-fix-cf-live-intervals', '-si-fix-sgpr-live-ranges', '-si-fold-operands', '-si-i1-copies', '-si-insert-nops', '-si-insert-waits', '-si-load-store-opt', '-si-lower-control-flow',
'-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only',

'-aa', '-aa-eval', '-alloca-hoisting', '-always-inline',  '-asan', '-asan-module', '-assumption-cache-tracker','-atomic-expand', '-bool-ret-to-int', '-bounds', '-bounds-checking', '-break-crit-edges', '-cfl-aa',  '-codegenprepare', '-cost-model', '-cross-dso-cfi', '-deadarghaX0r', '-delinearize',  '-dfsan',  '-divergence', '-dwarfehprepare', '-elim-avail-extern', '-external-aa', '-extract-blocks', '-forceattrs', '-function-import', '-generic-to-nvvm', '-globals-aa', '-inferattrs', '-insert-gcov-profiling', '-instcount', '-instnamer', '-instrprof', '-instsimplify', '-internalize', '-intervals', '-irce', '-iv-users', '-lint', '-liveintervals', '-livevars', '-load-combine', '-loop-extract', '-loop-extract-single', '-loop-reroll', '-loop-reduce', '-loop-versioning', '-loop-versioning-licm', '-lower-expect', '-loweratomic', '-lowerbitsets', '-lowerinvoke', '-lowerswitch', '-machinedomtree', '-machinepostdomtree', '-memoryssalazy', '-metarenamer', '-module-debuginfo', '-msan',  '-nvvm-reflect', '-pa-eval', '-partial-inliner', '-partially-inline-libcalls', '-pgo-instr-gen', '-pgo-instr-use',  '-place-backedge-safepoints-impl', '-place-safepoints', '-postdomtree', '-reg2mem', '-rewrite-statepoints-for-gc', '-rewrite-symbols', '-rpo-functionattrs', '-safe-stack', '-sample-profile', '-sancov', '-scoped-noalias', '-separate-const-offset-from-gep', '-sgpr-copies', '-sjljehprepare', '-slotindexes', '-slsr', '-speculative-execution', '-strip', '-strip-dead-debug-info', '-strip-debug-declare', '-strip-nondebug', '-structurizecfg', '-tsan', '-tti', '-unreachable-mbb-elimination', '-wholeprogramdevirt', '-winehprepare', '-x86-winehstate', 

#Used separately in the code below
'-targetlibinfo', '-verify', 

#'-scev-aa',
#'-add-discriminators',
#'-alignment-from-assumptions', 
#'-bb-vectorize',
#'-consthoist',
#'-demanded-bits',
#'-flattencfg', 
#'-float2int', 
#'-loop-data-prefetch',
#'-loop-accesses',
#'-loop-interchange',
#'-loop-load-elim',
#'-loop-distribute',
#'-loop-simplifycfg',
#'-mergereturn',
#'-mldst-motion', 
#'-nary-reassociate',
#'-scalarizer', 
#'-scalarrepl-ssa', note: alternate with mem2reg
#'-sink',
]

args_list = [
'-aa', '-aa-eval', '-adce', '-add-discriminators', '-alignment-from-assumptions', '-alloca-hoisting', '-always-inline', '-amdgpu-annotate-kernel-features', '-amdgpu-annotate-uniform', '-amdgpu-promote-alloca', '-argpromotion', '-asan', '-asan-module', '-assumption-cache-tracker', '-atomic-expand', '-barrier', '-basicaa', '-basiccg', '-bb-vectorize', '-bdce', '-block-freq', '-bool-ret-to-int', '-bounds-checking', '-branch-prob', '-break-crit-edges', '-cfl-aa', '-codegenprepare', '-consthoist', '-constmerge', '-constprop', '-correlated-propagation', '-cost-model', '-cross-dso-cfi', '-da', '-dce', '-deadargelim', '-deadarghaX0r', '-delinearize', '-demanded-bits', '-dfsan', '-die', '-divergence', '-domfrontier', '-domtree', '-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only', '-dse', '-dwarfehprepare', '-early-cse', '-elim-avail-extern', '-external-aa', '-extract-blocks', '-flattencfg', '-float2int', '-forceattrs', '-function-import', '-functionattrs', '-generic-to-nvvm', '-globaldce', '-globalopt', '-globals-aa', '-gvn', '-indvars', '-inferattrs', '-inline', '-insert-gcov-profiling', '-instcombine', '-instcount', '-instnamer', '-instrprof', '-instsimplify', '-internalize', '-intervals', '-ipconstprop', '-ipsccp', '-irce', '-iv-users', '-jump-threading', '-lazy-value-info', '-lcssa', '-licm', '-lint', '-liveintervals', '-livevars', '-load-combine', '-loop-accesses', '-loop-data-prefetch', '-loop-deletion', '-loop-distribute', '-loop-extract', '-loop-extract-single', '-loop-idiom', '-loop-instsimplify', '-loop-interchange', '-loop-load-elim', '-loop-reduce', '-loop-reroll', '-loop-rotate', '-loop-simplify', '-loop-simplifycfg', '-loop-unroll', '-loop-unswitch', '-loop-vectorize', '-loop-versioning', '-loop-versioning-licm', '-loops', '-lower-expect', '-loweratomic', '-lowerbitsets', '-lowerinvoke', '-lowerswitch', '-machinedomtree', '-machinepostdomtree', '-mem2reg', '-memcpyopt', '-memdep', '-memoryssalazy', '-mergefunc', '-mergereturn', '-metarenamer', '-mldst-motion', '-module-debuginfo', '-msan', '-nary-reassociate', '-nvptx-assign-valid-global-names', '-nvptx-favor-non-generic', '-nvptx-lower-aggr-copies', '-nvptx-lower-alloca', '-nvptx-lower-kernel-args', '-nvvm-reflect', '-objc-arc', '-objc-arc-aa', '-objc-arc-apelim', '-objc-arc-contract', '-objc-arc-expand', '-pa-eval', '-partial-inliner', '-partially-inline-libcalls', '-pgo-instr-gen', '-pgo-instr-use', '-place-backedge-safepoints-impl', '-place-safepoints', '-postdomtree', '-print-alias-sets', '-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-memderefs', '-print-memoryssa', '-print-module', '-prune-eh', '-reassociate', '-reg2mem', '-regions', '-rewrite-statepoints-for-gc', '-rewrite-symbols', '-rpo-functionattrs', '-safe-stack', '-sample-profile', '-sancov', '-scalar-evolution', '-scalarizer', '-scalarrepl', '-scalarrepl-ssa', '-sccp', '-scev-aa', '-scoped-noalias', '-separate-const-offset-from-gep', '-sgpr-copies', '-si-annotate-control-flow', '-si-fix-cf-live-intervals', '-si-fix-sgpr-live-ranges', '-si-fold-operands', '-si-i1-copies', '-si-insert-nops', '-si-insert-waits', '-si-load-store-opt', '-si-lower-control-flow', '-simplifycfg', '-sink', '-sjljehprepare', '-slotindexes', '-slp-vectorizer', '-slsr', '-speculative-execution', '-sroa', '-strip', '-strip-dead-debug-info', '-strip-dead-prototypes', '-strip-debug-declare', '-strip-nondebug', '-structurizecfg', '-tailcallelim', '-targetlibinfo', '-tbaa', '-tsan', '-tti', '-unreachable-mbb-elimination', '-verify', '-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only', '-wholeprogramdevirt', '-winehprepare', '-x86-winehstate'
]

extended_list = [
'-addr-sink-using-gep', '-aggregate-extracted-args', '-aggressive-ext-opt', '-align-neon-spills', '-asm-show-inst', '-avoid-speculation', '-basicaa-recphi', '-bb-vectorize-aligned-only', '-bb-vectorize-fast-dep', '-bb-vectorize-ignore-target-info', '-bb-vectorize-splat-breaks-chain', '-bb-vectorize-use-chain-depth', '-bounds-checking-single-trap', '-branch-relax-asm-large', '-check-vmlx-hazard', '-combine-loads', '-combiner-alias-analysis', '-combiner-global-alias-analysis', '-combiner-split-load-index', '-combiner-stress-load-slicing', '-combiner-use-tbaa', '-commgep-const', '-commgep-inv', '-commgep-speculate', '-costmodel-reduxcost', '-da-delinearize', '-data-sections', '-dfsan-args-abi', '-dfsan-combine-pointer-labels-on-load', '-dfsan-combine-pointer-labels-on-store', '-dfsan-preserve-alignment', '-early-live-intervals', '-emulated-tls', '-enable-aa-sched-mi', '-enable-acc-forwarding', '-enable-alu-forwarding', '-enable-andcmp-sinking', '-enable-block-placement-stats', '-enable-bsb-sched', '-enable-cond-stores-vec', '-enable-deferred-spilling', '-enable-fmf-dag', '-enable-fp-mad', '-enable-gen-insn', '-enable-global-merge', '-enable-hexagon-br-prob', '-enable-hexagon-hvx', '-enable-hexagon-hvx-double', '-enable-hexagon-ieee-rnd-near', '-enable-hexagon-memops', '-enable-hexagon-sdnode-sched', '-enable-if-conversion', '-enable-implicit-null-checks', '-enable-ind-var-reg-heur', '-enable-interleaved-mem-accesses', '-enable-legalize-types-checking', '-enable-load-pre', '-enable-loadstore-runtime-interleave', '-enable-local-reassign', '-enable-loop-distribute', '-enable-loop-load-elim', '-enable-loop-versioning-licm', '-enable-loopinterchange', '-enable-lsr-phielim', '-enable-mem-access-versioning', '-enable-mips-tail-calls', '-enable-misched', '-enable-name-compression', '-enable-noalias-to-md-conversion', '-enable-non-lto-gmr', '-enable-objc-arc-opts', '-enable-patchpoint-liveness', '-enable-pie', '-enable-post-misched', '-enable-ppc-extra-toc-reg-deps', '-enable-ppc-prefetching', '-enable-pre', '-enable-scoped-noalias', '-enable-selectiondag-sp', '-enable-shrink-wrap', '-enable-sign-dependent-rounding-fp-math', '-enable-subreg-liveness', '-enable-tail-merge', '-enable-tbaa', '-enable-timing-class-latency', '-enable-unsafe-globalsmodref-alias-results', '-exhaustive-register-search', '-expand-all-fp-mlx', '-expensive-combines', '-expose-ppc-andi-glue-bug', '-extra-vectorizer-passes', '-extract-needand', '-extract-nosr0', '-fast-isel', '-ffast-math', '-fixup-byte-word-insts', '-float-to-int', '-force-mips-long-branch', '-function-sections', '-funit-at-a-time', '-gcov-exit-block-before-body', '-global-isel', '-global-merge-group-by-use', '-global-merge-ignore-single-use', '-global-merge-on-const', '-global-merge-on-external', '-group-functions-by-hotness', '-hexagon-align-calls', '-hexagon-bit', '-hexagon-commgep', '-hexagon-eif', '-hexagon-emit-jump-tables', '-hexagon-enable-branch-prediction', '-hexagon-expand-condsets', '-hexagon-extract', '-hexagon-gen-pred', '-hexagon-hwloop-preheader', '-hexagon-insert', '-hexagon-loop-resched', '-hexagon-mux', '-hexagon-opt-spill', '-hexagon-packetize-volatiles', '-hexagon-sched-inline-asm', '-hexagon-shrink-frame', '-hoist-cheap-insts', '-hsdr-no-mem', '-ifcvt-branch-fold', '-incremental-linker-compatible', '-insert-all0', '-insert-const', '-insert-has0', '-insert-timing', '-insert-timing-detail', '-join-globalcopies', '-join-liveintervals', '-join-splitedges', '-jump-is-expensive', '-liv-reduce', '-loop-distribute-non-if-convertible', '-loop-distribute-verify', '-loop-prefetch-writes', '-loop-unswitch-with-block-frequency', '-loop-vectorize-with-block-frequency', '-lower-interleaved-accesses', '-lowerbitsets-avoid-reuse', '-machine-sink-bfi', '-machine-sink-split', '-mark-data-regions', '-mc-relax-all', '-mextern-sdata', '-mgpopt', '-mips-align-constant-islands', '-mips-constant-islands-no-load-relaxation', '-mips-erase-gp-opnd', '-mips-fix-global-base-reg', '-mips-load-target-from-got', '-mips-os16', '-mips16-constant-islands', '-mips16-dont-expand-cond-pseudo', '-mips16-hard-float', '-misched-bottomup', '-misched-cluster', '-misched-cyclicpath', '-misched-fusion', '-misched-postra', '-misched-regpressure', '-misched-topdown', '-mlocal-sdata', '-mlsm', '-mno-check-zero-division', '-mno-compound', '-mno-ldc1-sdc1', '-mno-pairing', '-msan-check-access-address', '-msan-check-constant-shadow', '-msan-handle-icmp', '-msan-handle-icmp-exact', '-msan-keep-going', '-msan-poison-stack', '-msan-poison-stack-with-call', '-msan-poison-undef', '-mxgot', '-no-discriminators', '-no-phi-elim-live-out-early-exit', '-no-stack-coloring', '-no-stack-slot-sharing', '-no-x86-call-frame-opt', '-nozero-initialized-in-bss', '-nvvm-reflect-enable', '-old-thumb2-ifcvt', '-only-simple-regions', '-optimize-regalloc', '-outline-optional-branches', '-pbqp-coalescing', '-phi-elim-split-all-critical-edges', '-post-RA-scheduler', '-ppc-always-use-base-pointer', '-ppc-bit-perm-rewriter-stress-rotates', '-ppc-gep-opt', '-ppc-machine-combiner', '-ppc-track-subreg-liveness', '-ppc-use-base-pointer', '-ppc-use-bit-perm-rewriter', '-ppc-use-branch-hint', '-precise-rotation-cost', '-preserve-alignment-assumptions-during-inlining', '-preserve-bc-uselistorder', '-preserve-ll-uselistorder', '-protect-from-escaped-allocas', '-qpx-stack-unaligned', '-quiet', '-rdf-dump', '-rdf-opt', '-relax-nv-checks', '-remat-pic-stub-load', '-reroll-loops', '-rs4gc-allow-statepoint-with-no-deopt-info', '-rs4gc-clobber-non-live', '-run-slp-after-loop-vectorization', '-run-twice', '-scalarize-load-store', '-scheditins', '-schedmodel', '-schedule-ppc-vsx-fma-mutation-early', '-simplifycfg-dup-ret', '-simplifycfg-hoist-cond-stores', '-simplifycfg-merge-cond-stores', '-simplifycfg-merge-cond-stores-aggressively', '-simplifycfg-sink-common', '-sink-insts-to-avoid-spills', '-skip-mips-long-branch', '-slp-vectorize-hor', '-slp-vectorize-hor-store', '-sparc-reserve-app-registers', '-speculate-one-expensive-inst', '-spp-all-backedges', '-spp-no-backedge', '-spp-no-call', '-spp-no-entry', '-spp-split-backedge', '-sroa-random-shuffle-slices', '-sroa-strict-inbounds', '-stack-symbol-ordering', '-stackrealign', '-std-link-opts', '-stress-cgp-ext-ld-promotion', '-stress-cgp-store-extract', '-stress-early-ifcvt', '-tail-dup-verify', '-tailcallopt', '-terminal-rule', '-track-memory', '-tsan-instrument-atomics', '-tsan-instrument-func-entry-exit', '-tsan-instrument-memintrinsics', '-tsan-instrument-memory-accesses', '-twoaddr-reschedule', '-unique-section-names', '-unroll-allow-partial', '-unroll-runtime', '-use-allocframe', '-use-cfl-aa', '-use-cfl-aa-in-codegen', '-use-ctors', '-use-gvn-after-vectorization', '-use-mbpi', '-use-new-sroa', '-use-segment-set-for-physregs', '-use-tbaa-in-sched-mi', '-vectorize-loops', '-vectorize-slp', '-vectorize-slp-aggressive', '-vectorizer-maximize-bandwidth', '-widen-vmovs', '-x86-early-ifcvt', '-x86-experimental-vector-widening-legalization', '-x86-machine-combiner', '-x86-use-base-pointer', '-x86-use-vzeroupper'
]

int_list = [
'-align-all-blocks', '-align-all-functions', '-align-all-nofallthru-blocks', '-available-load-scan-limit', '-bb-vectorize-max-cycle-check-pairs', '-bb-vectorize-max-instr-per-group', '-bb-vectorize-max-iter', '-bb-vectorize-max-pairs-per-group', '-bb-vectorize-req-chain-depth', '-bb-vectorize-search-limit', '-bb-vectorize-vector-bits', '-block-placement-exit-block-bias', '-bonus-inst-threshold', '-dag-maps-huge-region', '-dag-maps-reduction-size', '-dom-conditions-max-uses', '-early-ifcvt-limit', '-eif-limit', '-expand-condsets-coa-limit', '-expand-condsets-tfr-limit', '-expand-limit', '-extract-cutoff', '-float2int-max-integer-bw', '-force-target-instruction-cost', '-force-target-max-scalar-interleave', '-force-target-max-vector-interleave', '-force-target-num-scalar-regs', '-force-target-num-vector-regs', '-force-vector-interleave', '-force-vector-width', '-ga-max-num-uses-for-constant-extenders', '-gpsize', '-icp-max-annotations', '-insert-dist-cutoff', '-insert-vreg-cutoff', '-jump-inst-cost', '-jump-threading-implication-search-threshold', '-jump-threading-threshold', '-lcr-max-depth', '-lcr-max-interf', '-licm-versioning-max-depth-threshold', '-likely-branch-weight', '-loop-distribute-scev-check-threshold', '-loop-load-elimination-scev-check-threshold', '-loop-to-cold-block-ratio', '-loop-unswitch-coldness-threshold', '-loop-unswitch-threshold', '-max-dependences', '-max-interleave-group-factor', '-max-nested-scalar-reduction-interleave', '-max-num-inst-between-tfr-and-nv-store', '-max-recurse-depth', '-max-reroll-increment', '-max-speculation-depth', '-memdep-block-number-limit', '-memdep-block-scan-limit', '-memory-check-merge-threshold', '-mips-ssection-threshold', '-misfetch-cost', '-outline-optional-threshold', '-partial-unrolling-threshold', '-phi-node-folding-threshold', '-ppc-loop-prefetch-cache-line', '-ppc-loop-prefetch-distance', '-ppc-preinc-prep-max-vars', '-pragma-unroll-threshold', '-pragma-vectorize-memory-check-threshold', '-pragma-vectorize-scev-check-threshold', '-rdf-limit', '-regalloc-csr-first-time-cost', '-reroll-num-tolerated-failed-matches', '-rewrite-phi-limit', '-rotation-max-header-size', '-runtime-check-per-loop-load-elim', '-runtime-memory-check-threshold', '-sched-avg-ipc', '-shrink-frame-limit', '-small-loop-cost', '-spec-exec-max-not-hoisted', '-spec-exec-max-speculation-cost', '-spp-rematerialization-threshold', '-stack-alignment', '-swift-partial-update-clearance', '-tail-dup-limit', '-tail-dup-size', '-tail-merge-size', '-tail-merge-threshold', '-unlikely-branch-weight', '-unroll-count', '-unroll-dynamic-cost-savings-discount', '-unroll-max-iteration-count-to-analyze', '-unroll-percent-dynamic-cost-saved-threshold', '-unroll-threshold', '-vectorize-num-stores-pred', '-vectorize-scev-check-threshold', '-vectorizer-min-trip-count', '-warn-stack-size', '-dfa-sched-reg-pressure-threshold', '-dwarf-version', '-hexagon-small-data-threshold', '-ifcvt-fn-start', '-ifcvt-fn-stop', '-ifcvt-limit', '-imp-null-check-page-size', '-inline-threshold', '-inlinecold-threshold', '-inlinehint-threshold', '-max-hsdr', '-max-sched-reorder', '-max-store-memcpy', '-max-store-memcpy-Os', '-max-store-memmove', '-max-store-memmove-Os', '-max-store-memset', '-max-store-memset-Os', '-minimum-jump-tables', '-mips-constant-islands-small-offset', '-msan-instrumentation-with-call-threshold', '-msan-poison-stack-pattern', '-msan-track-origins', '-number-scavenger-slots', '-nvj-count', '-sched-high-latency-cycles', '-slp-max-reg-size', '-slp-schedule-budget', '-slp-threshold', '-spp-counted-loop-trip-width', '-ssc-dce-limit', '-stackmap-version', '-t2-reduce-limit', '-t2-reduce-limit2', '-t2-reduce-limit3'
]

#enum_list is extracted in text


class LLVMFlagsTuner(opentuner.measurement.MeasurementInterface):
  def __init__(self, *pargs, **kwargs):
      super(LLVMFlagsTuner, self).__init__(*pargs, **kwargs)
      self.flag_list = self.getArgs()
      self.extended_flag_list = extended_list
      self.int_list = int_list
      self.enum_list = [] #will be filled in by reading from enums.txt

  def run(self, desired_result, input, limit):
    cfg = desired_result.configuration.data

    global first_run
    if first_run:
        print 'First benchmarking clang -O2'
        O2_times = []
        output = self.call_program('clang -O2 -lm -lstdc++ ' + source_name + ' -o ' + 'clangO2.out', limit = timeout)
        if output['returncode'] != 0:
            print 'error at clang -O2 compilation\n'
            print output['stderr']

        for i in range(10):
            output = self.call_program('./clangO2.out', limit = timeout)
            if ('ERROR' in output['stdout']) or output['stderr'] != '' or output['returncode'] != 0:
                print 'error at running clang -O2 code\n'
                print output['stderr']
            O2_times.append(output['time'])
        O2_times.sort()
        print O2_times	
        print "Fast runtime for clang -O2 is " + str(O2_times[1]) + '\n\n\n\n'

        print 'Now running OpenTuner'
        #Converting .c to .ll, this step only needs to be done once
        output = self.call_program('clang -O0 -S -emit-llvm ' + source_name + ' -o ' + ll_int, limit = timeout)
        if output['returncode'] != 0:
          print "error at .c to .ll step\n"
          return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
        first_run = False

    #parameterList is '-targetlibinfo ... -verify'
    parameterList = '-targetlibinfo '
    counter = {}
    
    for i in self.flag_list: #setting initial count of optimization passes to 0
      counter[i] = 0
    for i in self.extended_flag_list: #binary flags
      if cfg[i]:
        parameterList += i + ' '
    for i in self.int_list: #int flags
      if cfg[i]:
        parameterList += i + '=' + str(cfg[i + 'val']) + ' '
    for i in self.enum_list: #enum flags
      if cfg[i]:
        parameterList += i + cfg[i + 'enum'] + ' '

    for i in cfg['order']: #the passes are added last to the parameterList. They are added only counter[i] num times
      if counter[i] < cfg[i]:
          parameterList += i + ' '
      counter[i] += 1

    parameterList += '-verify'
    print parameterList

    #.ll to .bc
    output = self.call_program('opt ' + parameterList + ' ' + ll_int + ' -S -o ' + ll_optimized_int, limit = timeout)
    if output['returncode'] != 0:
      print "error at optimizing IR\n"
      print output['stderr']
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.bc to .s
    output = self.call_program('llc ' + ll_optimized_int + ' -filetype=obj -o ' + o_int, limit = timeout)
    if output['returncode'] != 0:
      print output['stderr']
      print "error at .bc to .s step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.o to .out
    output = self.call_program('clang -lstdc++ -lm ' + o_int + ' -o ' + out_int, limit = timeout)
    if output['returncode'] != 0:
      print "error at .o to .out\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    runtimes = []
    for i in range(10):
      argument = './' + out_int
      output = self.call_program('./' + out_int, limit = timeout)
      if ('ERROR' in output['stdout']) or output['stderr'] != '' or output['returncode'] != 0:
        print 'error at running code\n'
        print output['stderr']
        return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
      else:
        runtimes.append(float(output['time']))
    runtimes.sort()

    print runtimes
    print 'running the code took ' + str(runtimes[1]) + ' seconds\n\n'
    return opentuner.resultsdb.models.Result(time=runtimes[1])


  def manipulator(self):
    def enum_extractor(self):
      f = open('enums.txt', 'r')
      currentEntry = None
      for i in f:
        if '=' in i:
          enum_dict[currentEntry].append(i.lstrip(' ').split(' ')[0])
        else:
          currentEntry = i.lstrip(' ').split(' ')[0]
          enum_dict[currentEntry] = []
          self.enum_list.append(currentEntry)

    m = manipulator.ConfigurationManipulator()
    flag_list_duplicate = []
    enum_dict = {}
    enum_extractor(self)
    for i in range(3): #each pass is duplicated three times, and then randomly permutated
      flag_list_duplicate.extend(self.flag_list)

    for f in self.flag_list:
      m.add_parameter(manipulator.IntegerParameter(f, 0, 3))
    for f in self.extended_flag_list:
      m.add_parameter(manipulator.BooleanParameter(f))
    for f in self.int_list:
      m.add_parameter(manipulator.BooleanParameter(f))
      m.add_parameter(manipulator.IntegerParameter(f + 'val', 1, 1024))
    for f in self.enum_list:
      m.add_parameter(manipulator.BooleanParameter(f))
      m.add_parameter(manipulator.EnumParameter(f + 'enum', enum_dict[f]))
    m.add_parameter(manipulator.PermutationParameter('order', flag_list_duplicate))
    
    return m


  def getArgs(self):
    #this is normally how we extract the list of passes from LLVM, but we use our own pre-defined list
    #to save time and help with debugging
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
  
