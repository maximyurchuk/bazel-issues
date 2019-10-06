MyProvider = provider(fields = ["dep"])
MyAspectProvider = provider()

def _my_rule(ctx):
    f = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.write(f, "hello")
    return [DefaultInfo(files = depset([f])), MyProvider(dep = ctx.attr.dep)]
    

my_rule = rule(
    implementation = _my_rule,
    attrs = {
        "dep": attr.label(),
    },
)

def _my_aspect(target, ctx):    
    if target[MyProvider].dep:
        deps_from_my_provider = target[MyProvider].dep
        deps_from_rule_ctx = ctx.rule.attr.dep
        print("deps_from_my_provider", deps_from_my_provider)
        print("deps_from_rule_ctx", deps_from_rule_ctx)
        
            
        if MyAspectProvider in deps_from_rule_ctx:
            print("ctx.rule.attr.deps has NO MyAspectProvider")
        else:
            print("ctx.rule.attr.deps has MyAspectProvider")
            
        if MyAspectProvider in target:
            print("target has NO MyAspectProvider")
        else:
            print("target has MyAspectProvider")
    
    return [MyAspectProvider()]


my_aspect = aspect(
    implementation = _my_aspect,
    attr_aspects = ["*"],
)
