+++
title = "Turning on the light"
draft = true
+++

This post describes a number of options available in circa 2018 you have to add
your voice to the ocean of information, known as the World Wide Web.

<!--more-->

The World Wide Web has over 40 billion pages according
to the [size of Google index](http://www.worldwidewebsize.com/).

The characteristics of these sites are quite different:

1. Nature of the organization
2. Frequency of update
3. Volume of data update
4. Type of content: dynamic vs static

## Static Site Generator


Many software is been written to convert simple source text files to a well organized
web site.  The resulting web site needs to be regenerated whenever the source
files are updated.  The source files are intented to be updated by the end user
manually.

Here are some examples of popular static site generators:

| Project name | Implemented in |
|--------------|----------------|
| [Pelican](http://docs.getpelican.com/en/stable/) | Python |
| [Jekyll](http://jekyllrb.com/)                   | Ruby   |
| [Hugo](https://gohugo.io/)                       | Go     |


Pros

> 1. Very easy to get started.
> 2. The generated site can be hosted in a variety of ways freely.
> 3. You can host your content as a _github.io_ page for free. The response time
>    of the static sites is the fastest among all solutions.

Cons

> 1. It becomes harder (surprisingly fast) to customize the site.
> 2. When the content is updated frequently, it's more difficult
> to manage the content organization and freshness.
> 3. The lack of server-side programming makes difficult to implement
complex user engagement such as login or e-commerce related activities.


## Monolithic Web App


