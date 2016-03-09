pass_list = '-targetlibinfo -no-aa -tbaa -basicaa -notti -globalopt -ipsccp -deadargelim -instcombine -simplifycfg -basiccg -prune-eh -inline-cost -inline -functionattrs -argpromotion -sroa -domtree -early-cse -lazy-value-info -jump-threading -correlated-propagation -simplifycfg -instcombine -tailcallelim -simplifycfg -reassociate -domtree -loops -loop-simplify -lcssa -loop-rotate -licm -lcssa -loop-unswitch -instcombine -scalar-evolution -loop-simplify -lcssa -indvars -loop-idiom -loop-deletion -loop-unroll -memdep -gvn -memdep -memcpyopt -sccp -instcombine -lazy-value-info -jump-threading -correlated-propagation -domtree -memdep -dse -loops -scalar-evolution -slp-vectorizer -adce -simplifycfg -instcombine -barrier -domtree -loops -loop-simplify -lcssa -scalar-evolution -loop-simplify -lcssa -loop-vectorize -instcombine -simplifycfg -strip-dead-prototypes -globaldce -constmerge -preverify -domtree -verify'.split(' ')
pass_list = set(pass_list)
blacklist = [
#Analysis Passes that might be useful
'-iv-users', '-scev-aa',
#Transform passes that might be useful
'-internalize', '-loop-reduce', '-sink', 
#Analysis Passes that unnecessary
'-aa-eval', '-debug-aa', '-dot-callgraph', '-dot-cfg', '-dot-cfg-only', '-dot-dom', '-dot-dom-only', '-dot-postdom', '-dot-postdom-only', '-dot-regions', '-dot-regions-only',
 '-instcount', '-module-debuginfo', '-lint', '-delinearize', '-cost-model', 
 '-print-alias-sets', '-print-bb', '-print-callgraph', '-print-callgraph-sccs', '-print-cfg-sccs', '-print-dom-info', '-print-externalfnconstants', '-print-function', '-print-memdeps', '-print-module', '-print-used-types',
#Utility Passes that unnecessary
'-deadarghaX0r', '-extract-blocks', '-instnamer', '-reg2mem', 
'-view-callgraph', '-view-cfg', '-view-cfg-only', '-view-dom', '-view-dom-only', '-view-postdom', '-view-postdom-only', '-view-regions', '-view-regions-only', 
#Transform passes that unnecessary
'-strip', '-strip-dead-debug-info', '-strip-debug-declare', '-strip-nondebug',
'-codegenprepare', '-break-crit-edges', '-loop-extract', '-loop-extract-single',  
#These passes don't have much documentation
'-asan', '-asan-module', '-dfsan','-msan', '-tsan', '-bounds-checking', '-generic-to-nvvm', 
'-datalayout', '-debug-ir', '-insert-gcov-profiling', '-metarenamer', '-sample-profile',
#Used separately in the code below
'-verify', 
]

blacklist = set(blacklist)

whitelist = set([
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
])
#print blacklist
#print whitelist
whitelist.difference_update(blacklist)
whitelist.difference_update(pass_list)


print whitelist