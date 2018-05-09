+++
title = "Installation"
weight = 1
+++

# Leiningen

We assume that the development environment is either Linux or macos.

1. Make sure you have Java runtime environment installed.
1. Download the [lein script](https://leiningen.org/#install).  It is the compiler toolchain.
1. Run `lein` as an executable script, and it will automatically install the
   necessary Clojure compiler and libraries.

# Create a project

```
$ lein new hello-world

Generating a project called hello-world based on the 'default' template.
The default template is intended for library projects, not applications.
To see other templates (app, plugin, etc), try `lein help new`.
```

The empty project has a function declared `foo` which we can choose to run:

```
$ lein run -m hello-world.core/foo Blah   
Blah Hello, World!
```

