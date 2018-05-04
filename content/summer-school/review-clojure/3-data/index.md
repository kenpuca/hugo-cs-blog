+++
title = "Data"
author = "Ken Pu"
date = "2018-05-01"
weight = 3
+++

We will look at how data is accessed and processed in Clojure.

# Principles of Data-driven Programming

Clojure is a functional language.  It's data storage is primarily
_write once_, _read only_.

1. Construction
1. Transformation

We (almost) never modify data in-place.

# Managing Data

## Construction

{{% box %}}
# Definition: _Construction_

Building a data structure from smaller pieces is known as **construction**.
{{% /box %}}

{{< highlight clojure>}}
;; A vector
["Ken" "CS" "Clojure"]

;; A hashmap
{:name "Ken"
 :group "CS"
 :likes "Clojure"}

;; A set
#{ :red :green :blue }

;; A list (note the quote)
'("Ken" "likes" "Clojure")
{{< /highlight >}}

## Destructure

{{% box %}}
# Definition: _Destructure_

The process of _extracting_ smaller constituents from a data structure
is known as **destructure**.
{{% /box %}}

## Destructuring by access

Let's assume that the data structures are properly bound to the symbols.

### Accessing a list

{{< highlight clojure >}}
(def a-list (range 10)) ;; 0, 1, 2, ... 9
(first a-list) ;; 0
(rest a-list) ;; 1, 2, ... 9
(nth a-list 2) ;; 2
(last a-list) ;; 9
{{< /highlight >}}

### Accessing a vector

{{< highlight clojure >}}
(def a-vector [:a :b :c :d])

;; just treat a vector as a list
(first a-vector) ;; :a

;; can do random-access very efficiently
(get a-vector 2) ;; :c - zero-indexed
{{< /highlight >}}

### Accessing hashmap

{{< highlight clojure >}}
(def a-map {:name "Ken"
            :likes ["Programming" "Clojure"]
            :office {:building "UA"
                     :room "4041"}})

;; Getting by key
(get a-map :name) ;; Ken
(get a-map :first-name) ;; nil
(get a-map :first-name :unknown) ;; :unknown

;; Get from inner maps 
(get (get a-map :office) :room) ;; "4041"
(get (get a-map :likes) 0) ;; "Programming"

;; Get from Inner maps
(get-in a-map [:office :room]) ;; "4041"
(get-in a-map [:likes 0]) ;; "Programming"
{{< /highlight >}}

## Advanced destructuring with binding

{{% remark %}}
See <a href="#ref-destructure">[1]</a> for details.
{{% /remark %}}

## Transformation

Data modification is not supported by Clojure.  So, instead of modifying
existing data, we generate an incrementally altered copy.

### Adding to data

Conjoin:

{{< highlight clojure >}}
(conj [:a :b :c] :d) ;; [:a :b :c :d]

(conj '(:a :b :c) :d) ;; (:d :a :b :c)

(conj {:a 1, :b 2} [:c 3]) ;; {:a 1, :b 2, :c 3}
{{< /highlight >}}

{{% remark %}}
`conj` adds an element to a collection in the most
efficient manner.
{{% /remark %}}

Associate:

{{< highlight clojure >}}
(assoc {:a 1 :b 2} :c 3) ;; {:a 1 :b 2 :c 3}
{{< /highlight >}}

Cons:

{{<highlight clojure>}}
(cons :d [:a :b :c]) ;; (:d :a :b :c)

(cons :d '(:a :b :c)) ;; (:d :a :b :c)
{{</highlight>}}

{{% remark %}}
`cons` always:

1. adds element at the first
2. returns a list
{{% /remark %}}

### Updating data by replacement

Only vectors and hashmaps can be "_updated_".

{{< highlight clojure >}}
(assoc [1 -2 3] 1 2) ;; [1 2 3]

(assoc {:name "K"
        :likes ["Programming" "Clojure"]} :name "Ken")

(assoc-in {:name "K"
           :likes ["Programming" "Clojure"]} 
          [:likes 0] "Teach")
{{< /highlight >}}

### Removing from data from shrinkage

{{< highlight clojure >}}
;; Deleting from a list
(drop 1 '(:a :b :c)) ;; (:b :c)
(pop '(:a :b :c))    ;; (:b :c)

;; Delete from vector
(drop 1 [:a :b :c])  ;; (:b :c)
(pop [:a :b :c])     ;; [:a :b]

;; Delete from hashmap
(dissoc {:name "Ken"
         :office "UA4041"} :office) ;; {:name "Ken"}

;; Delete from set
(dissoc #{ :red :blue :green :white } :white) ;; #{:red :blue :green}
{{< /highlight >}}

{{% remark %}}
See [2] for more data transformation functions.
{{% /remark %}}

---

{{% box %}}
# Reference 
1. https://clojure.org/guides/destructuring <a name="ref-destructure"></a>
2. https://clojure.org/api/cheatsheet
{{% /box %}}
