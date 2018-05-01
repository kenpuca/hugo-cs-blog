---
title: "Functional Approach"
date: 2018-04-05T14:42:00-04:00
author: Ken Pu
---

The on-going assumption is that programming
is all about data transformation.  Let's
see how we achieve this with functions.

<!--more-->

## Functions

Function is a programming construct.  Function is a piece of code that 
requires zero or more values as _input_, and function will generate a new data
using some sort of computation.

{{<highlight clojure>}}
(defn f [x y]
  ...
  ...)
{{</highlight>}}

{{% remark %}}
This is synonymous to how mathematicians express
functions.
$$ f(x, y) = \dots $$
{{% /remark %}}

`(defn f ...)` creates a top-level symbol `f` that is bound to
a 2-arity function.

## Using functions.

Mathematicians invoke functions all the time: $f(f(\pi, 1), 2)$.
Clojure presents function invocations as a list, with the first element as
function, and the rest as the arguments.

{{<highlight clojure>}}
(f (f π 1) 2)
{{</highlight>}}
