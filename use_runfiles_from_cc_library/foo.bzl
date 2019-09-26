
def _impl(ctx):
    files = ctx.attr.input[DefaultInfo].data_runfiles.files
    print(files)
    return DefaultInfo(files = files)
    
  

use_runfiles = rule(
    implementation = _impl,
    attrs = {
        "input": attr.label(),
    },
)
