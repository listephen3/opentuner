#!/usr/bin/python
#runs the flags as specified in parameterList, meant for debugging purposes
import opentuner
import argparse
import sys
import time
from opentuner.search import manipulator

timeout = 5 #seconds
source_name = 'matrixmultiply.cpp'
source_file_name = source_name.split('.')[0]
ll_int = source_file_name + '.ll'
bc_int = source_file_name + '.bc'
s_int = source_file_name + '.s'
o_int = source_file_name + '.o'
out_int = source_file_name + '.out'
first_run = True

parser = argparse.ArgumentParser(parents=opentuner.argparsers())

parameterList = '-targetlibinfo -aggregate-extracted-args -align-neon-spills -avoid-speculation -bb-vectorize-ignore-target-info -bb-vectorize-use-chain-depth -branch-relax-asm-large -check-vmlx-hazard -combiner-alias-analysis -commgep-const -commgep-inv -commgep-speculate -costmodel-reduxcost -da-delinearize -data-sections -dfsan-args-abi -dfsan-combine-pointer-labels-on-store -enable-aa-sched-mi -enable-block-placement-stats -enable-cond-stores-vec -enable-fmf-dag -enable-fp-mad -enable-gen-insn -enable-global-merge -enable-hexagon-br-prob -enable-hexagon-sdnode-sched -enable-if-conversion -enable-ind-var-reg-heur -enable-loadstore-runtime-interleave -enable-local-reassign -enable-loop-load-elim -enable-loopinterchange -enable-mem-access-versioning -enable-name-compression -enable-pie -enable-ppc-extra-toc-reg-deps -enable-pre -enable-sign-dependent-rounding-fp-math -enable-timing-class-latency -expand-all-fp-mlx -expensive-combines -expose-ppc-andi-glue-bug -extra-vectorizer-passes -extract-needand -extract-nosr0 -ffast-math -fixup-byte-word-insts -force-mips-long-branch -function-sections -gcov-exit-block-before-body -global-isel -hexagon-align-calls -hexagon-enable-branch-prediction -hexagon-extract -hexagon-insert -hexagon-loop-resched -hexagon-sched-inline-asm -hexagon-shrink-frame -ifcvt-branch-fold -incremental-linker-compatible -insert-all0 -insert-const -insert-timing-detail -join-liveintervals -jump-is-expensive -liv-reduce -loop-distribute-non-if-convertible -loop-distribute-verify -lower-interleaved-accesses -machine-sink-bfi -machine-sink-split -mc-relax-all -mips-fix-global-base-reg -misched-cluster -misched-fusion -mno-pairing -msan-check-access-address -msan-handle-icmp-exact -msan-poison-stack -msan-poison-stack-with-call -mxgot -no-stack-coloring -no-stack-slot-sharing -no-x86-call-frame-opt -nvvm-reflect-enable -old-thumb2-ifcvt -only-simple-regions -optimize-regalloc -phi-elim-split-all-critical-edges -ppc-bit-perm-rewriter-stress-rotates -ppc-machine-combiner -protect-from-escaped-allocas -qpx-stack-unaligned -quiet -remat-pic-stub-load -run-slp-after-loop-vectorization -scalarize-load-store -simplifycfg-dup-ret -simplifycfg-hoist-cond-stores -simplifycfg-sink-common -sink-insts-to-avoid-spills -slp-vectorize-hor -slp-vectorize-hor-store -sparc-reserve-app-registers -speculate-one-expensive-inst -spp-all-backedges -stack-symbol-ordering -stackrealign -stress-cgp-store-extract -stress-early-ifcvt -tailcallopt -terminal-rule -tsan-instrument-func-entry-exit -tsan-instrument-memintrinsics -tsan-instrument-memory-accesses -twoaddr-reschedule -unique-section-names -unroll-allow-partial -use-cfl-aa -use-ctors -use-tbaa-in-sched-mi -vectorize-loops -vectorize-slp-aggressive -vectorizer-maximize-bandwidth -widen-vmovs -x86-early-ifcvt -x86-experimental-vector-widening-legalization -x86-machine-combiner -align-all-functions=8 -align-all-nofallthru-blocks=914 -available-load-scan-limit=452 -bb-vectorize-max-instr-per-group=213 -bb-vectorize-max-pairs-per-group=466 -bb-vectorize-req-chain-depth=319 -block-placement-exit-block-bias=578 -bonus-inst-threshold=291 -dag-maps-huge-region=943 -dag-maps-reduction-size=15 -early-ifcvt-limit=702 -eif-limit=365 -expand-condsets-coa-limit=86 -expand-condsets-tfr-limit=792 -float2int-max-integer-bw=366 -force-target-instruction-cost=66 -force-target-max-scalar-interleave=444 -force-vector-width=50 -icp-max-annotations=80 -jump-inst-cost=647 -jump-threading-implication-search-threshold=224 -jump-threading-threshold=105 -lcr-max-depth=618 -loop-load-elimination-scev-check-threshold=1022 -max-num-inst-between-tfr-and-nv-store=657 -max-recurse-depth=907 -max-reroll-increment=878 -max-speculation-depth=931 -memdep-block-scan-limit=346 -partial-unrolling-threshold=177 -phi-node-folding-threshold=448 -ppc-loop-prefetch-cache-line=856 -pragma-unroll-threshold=631 -pragma-vectorize-memory-check-threshold=775 -pragma-vectorize-scev-check-threshold=306 -rdf-limit=305 -reroll-num-tolerated-failed-matches=690 -rewrite-phi-limit=135 -rotation-max-header-size=282 -small-loop-cost=291 -spec-exec-max-not-hoisted=773 -tail-dup-limit=838 -tail-dup-size=84 -tail-merge-size=503 -unlikely-branch-weight=992 -unroll-dynamic-cost-savings-discount=196 -unroll-percent-dynamic-cost-saved-threshold=899 -vectorize-num-stores-pred=998 -vectorize-scev-check-threshold=96 -dwarf-version=309 -ifcvt-fn-stop=342 -inline-threshold=937 -inlinehint-threshold=273 -max-hsdr=206 -max-sched-reorder=517 -max-store-memmove=135 -max-store-memset=993 -max-store-memset-Os=132 -minimum-jump-tables=882 -mips-constant-islands-small-offset=98 -msan-poison-stack-pattern=992 -nvj-count=460 -slp-max-reg-size=924 -spp-counted-loop-trip-width=403 -asm-instrumentation=none -fp-contract=off -pre-RA-sched=list-ilp -safe-stack-usp-storage=thread-local -vector-library=Accelerate -nary-reassociate -loop-instsimplify -mergefunc -domtree -globaldce -loop-simplify -reassociate -loop-rotate -nary-reassociate -loop-unroll -licm -strip-dead-prototypes -correlated-propagation -globaldce -scalarrepl -alignment-from-assumptions -dse -tailcallelim -instcombine -deadargelim -mergefunc -domtree -mldst-motion -early-cse -mergefunc -constmerge -loop-vectorize -basiccg -sink -mergereturn -correlated-propagation -simplifycfg -alignment-from-assumptions -indvars -globalopt -loop-interchange -functionattrs -adce -ipsccp -domtree -flattencfg -scalarizer -block-freq -flattencfg -simplifycfg -demanded-bits -regions -da -bdce -lazy-value-info -argpromotion -constmerge -loop-rotate -prune-eh -flattencfg -argpromotion -block-freq -loop-deletion -loop-idiom -memcpyopt -die -die -float2int -mem2reg -basiccg -loop-distribute -regions -loop-distribute -reassociate -scalarrepl-ssa -alignment-from-assumptions -lazy-value-info -scev-aa -prune-eh -mem2reg -memdep -basicaa -loop-deletion -functionattrs -loop-instsimplify -basicaa -loop-unswitch -scev-aa -loop-unswitch -memcpyopt -jump-threading -indvars -loop-unswitch -regions -basiccg -indvars -scalarizer -constmerge -loop-simplify -dce -loop-deletion -sccp -functionattrs -adce -demanded-bits -jump-threading -demanded-bits -loop-data-prefetch -dse -inline -barrier -argpromotion -tailcallelim -inline -loop-distribute -loop-data-prefetch -loop-vectorize -basicaa -tailcallelim -dce -loop-data-prefetch -loop-vectorize -dce -verify'

class LLVMFlagsTuner(opentuner.measurement.MeasurementInterface):
  def __init__(self, *pargs, **kwargs):
      super(LLVMFlagsTuner, self).__init__(*pargs, **kwargs)

  def run(self, desired_result, input, limit):
    global first_run
    if first_run:
      #.c to .ll, this step only needs to be done once
      output = self.call_program('clang -O0 -S -emit-llvm ' + source_name + ' -o ' + ll_int, limit = timeout)
      if output['returncode'] != 0:
        print "error at .c to .ll step\n"
        return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
      first_run = False

    #.ll to .bc
    output = self.call_program('opt ' + parameterList + ' ' + ll_int + ' -o ' + bc_int, limit = timeout)
    if output['returncode'] != 0:
      print "error at .ll to .bc step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.bc to .s
    output = self.call_program('llc ' + bc_int + ' -o ' + s_int, limit = timeout)
    if output['returncode'] != 0:
      print "error at .bc to .s step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.s to .o
    output = self.call_program('as ' + s_int + ' -o ' + o_int, limit = timeout)
    if output['returncode'] != 0:
      print "error at s to .o step\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.o to .out
    output = self.call_program('clang -lstdc++ -lm ' + o_int + ' -o ' + out_int, limit = timeout)
    if output['returncode'] != 0:
      print "error at .o to .out\n"
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    argument = './' + out_int
    output = self.call_program('./' + out_int, limit = timeout)
    if ('ERROR' in output['stdout']) or output['stderr'] != '' or output['returncode'] != 0:
      print 'error at running code\n'
      print output['stderr']
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
    else:
      print parameterList
      print 'running the code took ' + str(output['time']) + ' seconds\n'
      print 'output is ' + output['stdout']
      return opentuner.resultsdb.models.Result(time=output['time'])


  def manipulator(self):
    m = manipulator.ConfigurationManipulator()
    m.add_parameter(manipulator.IntegerParameter('whatever', 1, 99999))
    return m
      
if __name__ == '__main__':
  opentuner.init_logging()
  args = parser.parse_args()
  #call_program()
  LLVMFlagsTuner.main(args)
  
