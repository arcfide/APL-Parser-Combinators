APL-Parser-Combinators
======================

Aaron W. Hsu <arcfide@sacrideo.us>

Parse Grammars
==============

Language recognizers in computer science are often described using a notation 
such as the BNF grammar. These grammars describe a program which will accept 
a string and return an indication of acceptance of the string in the given 
language described by the BNF grammar. 

## Terminals

...

## Non-terminals

A non-terminal is a set of productions associated with a given name, which 
can be referenced in other productions. A non-terminal appearing in a production 
matches against one of the productions associated with it. That is, it represents 
and ORing of possible productions that can be matched. So, for a non-terminal 
matching an positive integer string with decimal digits as the terminal d, 
we might have the following non-terminal:

    I ← d | d I

This gives us two productions matching a single digit or a digit followed by an 
I non-terminal, respectively. The I non-terminal may match either of these, 
continuing recursively.

    I←PC'd | (d , I)' ←→ I←d OR (d CAT I)

## Productions


Parsers
=======

P : E ∇ S → C E R T

Parser Combinators
==================

OR : E (P ∇∇ P) S → C E R T


