Treatment of the Off-the-Record Messaging Protocol and Deniability
===============================================================================

This is a short treatment of the Off-the-Record protocol and a discussion of 
its deniability properties.


Compilation
-------------------------------------------------------------------------------

To compile the PDFs, do the following.  First make sure you have cloned the 
submodules:
```
$ git submodule update --init
```
To compile the paper version using the llncs document class, you must get the 
patch for the `beamerarticle` package from [here][1].  But it should be trivial 
to just change it to use the standard `article` document class.

There is a make(1) script to make compilation easy for you.  Just run `make 
all` to build both paper and slides, or run

- `make otrmsg-paper.pdf` to compile the paper, and
- `make otrmsg-slides.pdf` to compile the slides.

[1]: https://bitbucket.org/rivanvx/beamer/issues/320/keywords-clashes-with-llncs
