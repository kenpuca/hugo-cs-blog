---
title: "Functions and Scopes - 1"
date: 2018-04-05T16:13:47-04:00
author: "Ken Pu"
class: "small"
---

The body of a function is a new scope.  In side this new
scope, we can refer to symbols.  We will look at different
types of symbols that are available inside a function. 

<!--more-->

## Local bindings & parameters

{{<highlight clojure>}}
(defn f [x y]
  (let [a 1]
    (+ a x y)))

(f 2 3) ;=> 6
{{</highlight >}}

{{% remark %}}
The local symbol `a` and the parameters `x` and `y`
are available.
{{% /remark %}}

## Symbols from outside the function

We can "capture" symbols from outside the function.
This is also called _closure_. There are two different
rules on how we can capture symbols from outside the
function.

### The Lexical Scoping Rule

According to this rule, all symbols that were available
in the scope where the function is defined are available
to the function _forever_.

{{< highlight clojure >}}
(let [tax-rate 0.1]
  (defn calc-tax [income]
    (* tax-rate tax)))

(calc-tax 1000); => 100
{{< /highlight >}}

{{% remark %}}
The body of `calc-tax` does not declare `tax-rate`, but
it _inherited_ the symbol from outer scope.
{{% /remark %}} 
