
This sample shows, that not all includes are detected in Bazel on Windows, which allows to use undeclared headers in .cpp files/

### Output

```
C:\git\bazel-issues\missing_headers_check>bazel-latest build ...
INFO: Writing tracer profile to 'C:/users/yurchuk/_bazel_yurchuk/ivh3eama/command.profile.gz'
INFO: Analyzed 2 targets (14 packages loaded, 61 targets configured).
INFO: Found 2 targets...
INFO: Elapsed time: 1.415s, Critical Path: 0.27s
INFO: 2 processes: 2 local.
INFO: Build completed successfully, 4 total actions

```

### Bazel version

```
C:\git\bazel-issues\missing_headers_check>bazel-latest version
Build label: 1.0.0rc4
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Mon Sep 30 13:58:09 2019 (1569851889)
Build timestamp: 1569851889
Build timestamp as int: 1569851889
```