
def _impl(ctx):
    files = ctx.attr.input[DefaultInfo]
    print("Data runfiles in target {}: {}".format(ctx.label.name, files.data_runfiles.files))
    if hasattr(files, "runfiles"):
        print("Runfiles in target {}: {}".format(ctx.label.name, files.runfiles.files))
    else: 
        print("No runfiles in target {}".format(ctx.label.name))
    
    
  

use_runfiles = rule(
    implementation = _impl,
    attrs = {
        "input": attr.label(),
    },
)
