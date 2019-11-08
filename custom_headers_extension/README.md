This sample shows, that Bazel doesn't support header files without extension. Or with custom extension. 

Issue: https://github.com/bazelbuild/bazel/issues/10201

### Output

```
c:\git\bazel-issues\custom_headers_extension>bazel build ...
INFO: Writing tracer profile to 'C:/users/yurchuk/_bazel_yurchuk/kxrig63f/command.profile.gz'
ERROR: C:/git/bazel-issues/custom_headers_extension/BUILD:4:1: in my_rule rule //:bar:
Traceback (most recent call last):
        File "C:/git/bazel-issues/custom_headers_extension/BUILD", line 4
                my_rule(name = 'bar')
        File "C:/git/bazel-issues/custom_headers_extension/my_rule.bzl", line 10, in _my_rule
                cc_common.compile(name = ctx.label.name, actions = c..., <11 more arguments>)
'foo' has wrong extension. The list of possible extensions for 'private_hdrs' are: .h,.hh,.hpp,.ipp,.hxx,.h++,.inc,.inl,.tlh,.tli,.H
ERROR: Analysis of target '//:bar' failed; build aborted: Analysis of target '//:bar' failed; build aborted
INFO: Elapsed time: 0.324s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (1 packages loaded, 2 targets configured)

```

### Bazel version

```
c:\git\bazel-issues\custom_headers_extension>bazel info release
INFO: Writing tracer profile to 'C:/users/yurchuk/_bazel_yurchuk/kxrig63f/command.profile.gz'
release 1.0.0
```