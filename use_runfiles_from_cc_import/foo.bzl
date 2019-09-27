
def _impl(ctx):
    files = ctx.attr.input[DefaultInfo]
    print("Runfiles in target {}: {}".format(ctx.label.name, files.data_runfiles.files))
    
  

use_runfiles = rule(
    implementation = _impl,
    attrs = {
        "input": attr.label(),
    },
)
