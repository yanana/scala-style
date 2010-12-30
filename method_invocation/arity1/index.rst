Arity-1
-------

Scala has a special syntax for invoking methods of arity-1 (one argument)::
    
    names.mkString(",")
    
    // is the same as
    
    names mkString ","
    
This syntax is formally known as "infix notation".  It should *only* be used for
purely-functional methods (methods with no side-effects) - such as ``mkString`` -
or methods which take functions as parameters - such as ``foreach``::
    
    // right!
    names foreach { n => println(n) }
    names mkString ","
    optStr getOrElse "<empty>"
    
    // wrong!
    javaList add item

.. toctree::

   higher_order_functions
