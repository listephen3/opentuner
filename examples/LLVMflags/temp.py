pass_list = '-targetlibinfo -no-aa -tbaa -basicaa -notti -globalopt -ipsccp -deadargelim -instcombine -simplifycfg -basiccg -prune-eh -inline-cost -inline -functionattrs -argpromotion -sroa -domtree -early-cse -lazy-value-info -jump-threading -correlated-propagation -simplifycfg -instcombine -tailcallelim -simplifycfg -reassociate -domtree -loops -loop-simplify -lcssa -loop-rotate -licm -lcssa -loop-unswitch -instcombine -scalar-evolution -loop-simplify -lcssa -indvars -loop-idiom -loop-deletion -loop-unroll -memdep -gvn -memdep -memcpyopt -sccp -instcombine -lazy-value-info -jump-threading -correlated-propagation -domtree -memdep -dse -loops -scalar-evolution -slp-vectorizer -adce -simplifycfg -instcombine -barrier -domtree -loops -loop-simplify -lcssa -scalar-evolution -loop-simplify -lcssa -loop-vectorize -instcombine -simplifycfg -strip-dead-prototypes -globaldce -constmerge -preverify -domtree -verify'.split(' ')
pass_list = set(pass_list)


whitelist = set([
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
])

whitelist.difference_update(pass_list)


print sorted(whitelist)