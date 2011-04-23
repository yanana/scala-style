Method Invocation
=================

Generally speaking, method invocation in Scala follows Java conventions.  In
other words, there should not be a space between the invocation target and the
dot (``.``), nor a space between the dot and the method name, nor should there
be any space between the method name and the argument-delimiters (parentheses).
Each argument should be separated by a single space *following* the comma (``,``)::
    
    foo(42, bar)
    target.foo(42, bar)
    target.foo()

.. toctree::

   arity0/index
   arity1/index
   operators
