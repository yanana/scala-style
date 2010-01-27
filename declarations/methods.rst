Methods
~~~~~~~

Methods should be declared according to the following pattern::
    
    def foo(bar: Baz): Bin = expr
    
The only exceptions to this rule are methods which return ``Unit``.  Such methods
should use Scala's syntactic sugar to avoid accidentally confusing return types::
    
    def foo(bar: Baz) {       // return type is Unit
      expr
    }
    
.. toctree::

   methods/modifiers
   methods/currying
   methods/higher_order_functions
