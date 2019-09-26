
def _impl(ctx):
    return DefaultInfo(files = ctx.attr.input[DefaultInfo].data_runfiles.files)
    
  

use_runfiles = rule(
    implementation = _impl,
    attrs = {
        "input": attr.label(),
    },
)
