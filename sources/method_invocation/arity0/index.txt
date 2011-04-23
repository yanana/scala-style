Arity-0
-------

Scala allows the omission of parentheses on methods of arity-0 (no arguments)::
    
    reply()
    
    // is the same as
    
    reply
    
However, this syntax should *only* be used when the method in question has no
side-effects (purely-functional).  In other words, it would be acceptable to
omit parentheses when calling ``queue.size``, but not when calling ``println()``.
This convention mirrors the method declaration convention given above.

Religiously observing this convention will *dramatically* improve code readability
and will make it much easier to understand at a glance the most basic operation
of any given method.  Resist the urge to omit parentheses simply to save two
characters!

.. toctree::

   suffix_notation
