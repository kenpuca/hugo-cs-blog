+++
title = "About Programming - 2"
part = 1
author = "Ken Pu"
date = "2018-04-02"
+++

Let's examine basics of Clojure.

<!--more-->

**Literal**

```
3.1415
```

**Symbols, Bindings & Scope**

We can define bindings that are valid for
the entire program.

{{< highlight clojure >}}
(def pi 3.1415)
{{< /highlight >}}

Sometimes, we want a binding to exist
with a limited duration.  

{{< highlight clojure >}}
; Two bindings are created, but they
; are only valid within the (let ...)
; block.
(let [first-name "Albert"
      last-name "Einstein"]
  ...
  ...)
{{< /highlight >}}


