This sample shows, that warnings in include dirs are ignored, because bazel passing includes as `-isystem` not `-I`

https://groups.google.com/forum/?nomobile=true#!topic/bazel-discuss/V6ZsSsDwS9w

### Output

```
maxim@ubuntu-yurchuk:~/git/bazel-issues/warning_in_headers$ ~/bazel build ... -s
INFO: Analyzed target //:lib (13 packages loaded, 67 targets configured).
INFO: Found 1 target...
SUBCOMMAND: # //:lib [action 'Compiling lib.cc']
(cd /home/maxim/.cache/bazel/_bazel_maxim/be5116cb758ca3c09eb33ec8ffea694b/execroot/__main__ && \
  exec env - \
    PATH=/sbin:/bin:/usr/bin:/usr/local/bin:/snap/bin \
    PWD=/proc/self/cwd \
  /usr/bin/gcc -U_FORTIFY_SOURCE -fstack-protector -Wall -Wunused-but-set-parameter -Wno-free-nonheap-object -fno-omit-frame-pointer '-std=c++0x' -MD -MF bazel-out/k8-fastbuild/bin/_objs/lib/lib.pic.d '-frandom-seed=bazel-out/k8-fastbuild/bin/_objs/lib/lib.pic.o' -fPIC -iquote . -iquote bazel-out/k8-fastbuild/bin -isystem include -isystem bazel-out/k8-fastbuild/bin/include -Werror -fno-canonical-system-headers -Wno-builtin-macro-redefined '-D__DATE__="redacted"' '-D__TIMESTAMP__="redacted"' '-D__TIME__="redacted"' -c lib.cc -o bazel-out/k8-fastbuild/bin/_objs/lib/lib.pic.o)
SUBCOMMAND: # //:lib [action 'Linking liblib.so']
(cd /home/maxim/.cache/bazel/_bazel_maxim/be5116cb758ca3c09eb33ec8ffea694b/execroot/__main__ && \
  exec env - \
    PATH=/sbin:/bin:/usr/bin:/usr/local/bin:/snap/bin \
    PWD=/proc/self/cwd \
  /usr/bin/gcc @bazel-out/k8-fastbuild/bin/liblib.so-2.params)
SUBCOMMAND: # //:lib [action 'Linking liblib.a']
(cd /home/maxim/.cache/bazel/_bazel_maxim/be5116cb758ca3c09eb33ec8ffea694b/execroot/__main__ && \
  exec env - \
    PATH=/sbin:/bin:/usr/bin:/usr/local/bin:/snap/bin \
    PWD=/proc/self/cwd \
  /usr/bin/ar @bazel-out/k8-fastbuild/bin/liblib.a-2.params)
Target //:lib up-to-date:
  bazel-bin/liblib.a
  bazel-bin/liblib.so
INFO: Elapsed time: 0.808s, Critical Path: 0.34s
INFO: 3 processes: 3 linux-sandbox.
INFO: Build completed successfully, 6 total actions
```

### Bazel version
```
maxim@ubuntu-yurchuk:~/git/bazel-issues/warning_in_headers$ 

maxim@ubuntu-yurchuk:~/git/bazel-issues/warning_in_headers$ ~/bazel version
Build label: 0.29.1
Build target: bazel-out/k8-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Tue Sep 10 13:44:39 2019 (1568123079)
Build timestamp: 1568123079
Build timestamp as int: 1568123079

```
