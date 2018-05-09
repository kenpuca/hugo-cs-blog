+++
title = "Leiningen"
weight = 3
+++

# What is `lein`?

> - A package manager
> - A compilation tool
> - A packaging tool

## As a package manager

We can search for Clojure libraries

```
$ lein search ring | less
```

The ring package is identified as pair of symbol (library name)
and a string (its version).

```
[ring "1.6.3"]
```

This needs to be added to the `project.clj`

```
(defproject simpleweb ""
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [ring "1.6.3"]])
```

A [complete sample reference](https://github.com/technomancy/leiningen/blob/stable/sample.project.clj) is available for reference.

## As a compilation tool

```
$ lein run
```

## As a packaging tool

```
$ lein uberjar
```