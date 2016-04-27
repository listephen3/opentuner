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

parameterList = '-targetlibinfo -aggregate-extracted-args -aggressive-ext-opt -asm-show-inst -avoid-speculation -bb-vectorize-ignore-target-info -bb-vectorize-use-chain-depth -bounds-checking-single-trap -branch-relax-asm-large -check-vmlx-hazard -combiner-alias-analysis -combiner-stress-load-slicing -combiner-use-tbaa -commgep-const -costmodel-reduxcost -da-delinearize -dfsan-combine-pointer-labels-on-store -dfsan-preserve-alignment -early-live-intervals -enable-aa-sched-mi -enable-acc-forwarding -enable-alu-forwarding -enable-andcmp-sinking -enable-block-placement-stats -enable-cond-stores-vec -enable-deferred-spilling -enable-fmf-dag -enable-fp-mad -enable-gen-insn -enable-hexagon-br-prob -enable-hexagon-hvx-double -enable-hexagon-ieee-rnd-near -enable-hexagon-memops -enable-hexagon-sdnode-sched -enable-if-conversion -enable-legalize-types-checking -enable-load-pre -enable-loadstore-runtime-interleave -enable-loop-distribute -enable-lsr-phielim -enable-mem-access-versioning -enable-noalias-to-md-conversion -enable-pie -enable-ppc-extra-toc-reg-deps -enable-ppc-prefetching -enable-pre -enable-scoped-noalias -enable-selectiondag-sp -enable-shrink-wrap -enable-sign-dependent-rounding-fp-math -enable-tbaa -enable-timing-class-latency -enable-unsafe-globalsmodref-alias-results -expensive-combines -expose-ppc-andi-glue-bug -extra-vectorizer-passes -extract-needand -ffast-math -force-mips-long-branch -funit-at-a-time -global-isel -global-merge-group-by-use -global-merge-ignore-single-use -global-merge-on-external -group-functions-by-hotness -hexagon-bit -hexagon-eif -hexagon-enable-branch-prediction -hexagon-hwloop-preheader -hexagon-insert -hexagon-loop-resched -hexagon-opt-spill -hexagon-packetize-volatiles -hexagon-sched-inline-asm -hoist-cheap-insts -ifcvt-branch-fold -incremental-linker-compatible -insert-all0 -insert-has0 -insert-timing -insert-timing-detail -join-globalcopies -join-splitedges -loop-distribute-verify -loop-vectorize-with-block-frequency -lower-interleaved-accesses -machine-sink-bfi -mark-data-regions -mips-align-constant-islands -mips-erase-gp-opnd -mips-load-target-from-got -mips-os16 -mips16-dont-expand-cond-pseudo -mips16-hard-float -misched-bottomup -misched-cluster -misched-fusion -misched-postra -mlsm -mno-check-zero-division -mno-ldc1-sdc1 -msan-check-access-address -msan-poison-stack -msan-poison-stack-with-call -no-discriminators -no-stack-coloring -nvvm-reflect-enable -optimize-regalloc -outline-optional-branches -post-RA-scheduler -ppc-always-use-base-pointer -ppc-use-bit-perm-rewriter -ppc-use-branch-hint -preserve-bc-uselistorder -preserve-ll-uselistorder -protect-from-escaped-allocas -quiet -rdf-dump -relax-nv-checks -remat-pic-stub-load -rs4gc-clobber-non-live -scalarize-load-store -scheditins -schedule-ppc-vsx-fma-mutation-early -simplifycfg-dup-ret -simplifycfg-hoist-cond-stores -simplifycfg-merge-cond-stores-aggressively -simplifycfg-sink-common -sink-insts-to-avoid-spills -skip-mips-long-branch -slp-vectorize-hor-store -spp-split-backedge -std-link-opts -stress-cgp-store-extract -tail-dup-verify -tailcallopt -terminal-rule -track-memory -tsan-instrument-atomics -twoaddr-reschedule -unroll-runtime -use-cfl-aa-in-codegen -use-tbaa-in-sched-mi -vectorize-loops -vectorize-slp-aggressive -vectorizer-maximize-bandwidth -widen-vmovs -x86-use-base-pointer -align-all-functions=463 -bb-vectorize-max-instr-per-group=670 -bb-vectorize-max-iter=322 -bb-vectorize-max-pairs-per-group=195 -bb-vectorize-req-chain-depth=77 -bb-vectorize-search-limit=464 -bb-vectorize-vector-bits=175 -block-placement-exit-block-bias=697 -bonus-inst-threshold=429 -dag-maps-reduction-size=14 -dom-conditions-max-uses=997 -early-ifcvt-limit=71 -expand-limit=965 -extract-cutoff=258 -float2int-max-integer-bw=276 -force-target-instruction-cost=684 -force-target-max-scalar-interleave=12 -force-vector-interleave=857 -force-vector-width=982 -ga-max-num-uses-for-constant-extenders=427 -gpsize=563 -icp-max-annotations=572 -insert-vreg-cutoff=108 -jump-inst-cost=762 -jump-threading-implication-search-threshold=68 -lcr-max-depth=215 -lcr-max-interf=556 -licm-versioning-max-depth-threshold=542 -likely-branch-weight=250 -max-speculation-depth=363 -memdep-block-scan-limit=599 -mips-ssection-threshold=99 -misfetch-cost=320 -partial-unrolling-threshold=35 -ppc-loop-prefetch-cache-line=383 -ppc-loop-prefetch-distance=757 -pragma-unroll-threshold=359 -pragma-vectorize-memory-check-threshold=825 -regalloc-csr-first-time-cost=614 -reroll-num-tolerated-failed-matches=464 -rewrite-phi-limit=930 -rotation-max-header-size=884 -runtime-memory-check-threshold=663 -tail-dup-limit=720 -tail-merge-threshold=800 -unroll-count=365 -unroll-dynamic-cost-savings-discount=866 -unroll-max-iteration-count-to-analyze=441 -unroll-percent-dynamic-cost-saved-threshold=532 -vectorize-num-stores-pred=919 -vectorize-scev-check-threshold=772 -vectorizer-min-trip-count=752 -warn-stack-size=896 -dfa-sched-reg-pressure-threshold=81 -hexagon-small-data-threshold=495 -ifcvt-limit=896 -inlinehint-threshold=768 -max-hsdr=510 -max-sched-reorder=358 -max-store-memcpy=321 -max-store-memcpy-Os=514 -max-store-memmove=360 -max-store-memmove-Os=359 -max-store-memset-Os=479 -minimum-jump-tables=784 -msan-instrumentation-with-call-threshold=233 -msan-poison-stack-pattern=368 -msan-track-origins=983 -number-scavenger-slots=1008 -nvj-count=647 -slp-max-reg-size=985 -slp-schedule-budget=342 -slp-threshold=984 -spp-counted-loop-trip-width=715 -ssc-dce-limit=458 -stackmap-version=252 -t2-reduce-limit2=319 -asm-instrumentation=none -float-abi=default -jump-table-type=single -pre-RA-sched=list-hybrid -regalloc=pbqp -relocation-model=static -safe-stack-usp-storage=thread-local -split-spill-mode=size -vector-library=none -globaldce -loop-distribute -mldst-motion -reassociate -early-cse -block-freq -basicaa -demanded-bits -scalarrepl-ssa -deadargelim -early-cse -loop-idiom -tailcallelim -gvn -demanded-bits -domfrontier -scev-aa -loop-instsimplify -loop-deletion -loop-vectorize -flattencfg -loops -barrier -loop-instsimplify -loop-accesses -loop-vectorize -sccp -consthoist -loop-distribute -sroa -jump-threading -inline -argpromotion -add-discriminators -loop-rotate -mem2reg -scalarrepl -domtree -lazy-value-info -bdce -scalarrepl -loop-rotate -mem2reg -memcpyopt -die -indvars -loop-deletion -mergereturn -memcpyopt -correlated-propagation -globalopt -loop-load-elim -adce -functionattrs -domfrontier -dce -jump-threading -consthoist -mergereturn -die -adce -reassociate -tailcallelim -adce -lazy-value-info -lazy-value-info -add-discriminators -inline -reassociate -scalarrepl -inline -licm -demanded-bits -loop-deletion -memdep -da -float2int -float2int -loop-accesses -basiccg -scev-aa -consthoist -loop-load-elim -sccp -mergereturn -float2int -loop-accesses -memdep -scalar-evolution -deadargelim -strip-dead-prototypes -argpromotion -strip-dead-prototypes -correlated-propagation -strip-dead-prototypes -licm -loop-instsimplify -licm -barrier -scalar-evolution -domtree -domtree -add-discriminators -verify'

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
      print output['stderr']
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
  
