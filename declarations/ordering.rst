Ordering Of Class Elements
~~~~~~~~~~~~~~~~~~~~~~~~~~

All class/object/trait members should be declared interleaved with newlines.
The only exceptions to this rule are ``var`` and ``val``.  These may be declared
without the intervening newline, but only if none of the fields have scaladoc
and if all of the fields have simple (max of 20-ish chars, one line) definitions::
    
    class Foo {
      val bar = 42
      val baz = "Daniel"
      
      def doSomething() { ... }
      
      def add(x: Int, y: Int) = x + y
    }
    
Fields should *precede* methods in a scope.  The only exception is if the ``val``
has a block definition (more than one expression) and performs operations which
may be deemed "method-like" (e.g. computing the length of a ``List``).  In such
cases, the non-trivial ``val`` may be declared at a later point in the file as
logical member ordering would dictate.  This rule *only* applies to ``val`` and
``lazy val``!  It becomes very difficult to track changing aliases if ``var``
declarations are strewn throughout class file.
