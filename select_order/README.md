
This sample shows, that select result depends on dict order in select argument.

### Output

```
c:\git\bazel-issues\select_order>c:\bazel\bazel-1.0.0-windows-x86_64.exe build  --define foo=1 --define bar=1 //:all
INFO: Writing tracer profile to 'C:/users/yurchuk/_bazel_yurchuk/vpuf7p3a/command.profile.gz'
DEBUG: C:/git/bazel-issues/select_order/rule.bzl:3:5: input = 2222
DEBUG: C:/git/bazel-issues/select_order/rule.bzl:3:5: input = 1111
INFO: Analyzed 3 targets (0 packages loaded, 0 targets configured).
INFO: Found 3 targets...
INFO: Elapsed time: 0.211s, Critical Path: 0.01s
INFO: 0 processes.
INFO: Build completed successfully, 1 total action
```

### Bazel version

```
c:\git\bazel-issues\select_order>c:\bazel\bazel-1.0.0-windows-x86_64.exe version
Build label: 1.0.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Thu Oct 10 10:17:16 2019 (1570702636)
Build timestamp: 1570702636
Build timestamp as int: 1570702636
```