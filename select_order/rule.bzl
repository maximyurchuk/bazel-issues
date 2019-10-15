
def _impl(ctx):
    print("input = {}".format(ctx.attr.input))
    
my_rule = rule(
    implementation = _impl,
    attrs = {
        "input": attr.string(),
    },
)
