+++
title = "About Programming - 1"
part = 1
author = "Ken Pu"
date = "2018-04-01"
+++

Programs are a way for us humans to communicate with
machines.  Literals, symbols and bindings of symbols to values
are incredibly fundamental, and yet often left implicit.

<!--more-->

>> I finally understood that the half page of code on the bottom of page 13 of
>> the Lisp 1.5 manual was Lisp in itself. These were __Maxwell’s Equations of
Software__!
>>
>> <author>Alan Kay</author>


## Literals

- We can specify data verbatim as part of the source code.
  The syntax that allows us to do this is called _literals_.

  - String literal `"Hello world"`
  - Numerical literal `3.14159265`

## Symbols / Variables

- We can give data one or more names.  The names we give
  to data is called a _symbol_ which are also known as _variables_.

## Bindings

- Symbols are only useful when they label some data.  When a symbol $\pi$
  is used as a label of a value `3.14159265`, we say that $\pi$ is bound to the
  value `3.14159265`.
