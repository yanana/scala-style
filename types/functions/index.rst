.. Functions
函数型
---------

.. Function types should be declared with a space between the parameter type, the
   arrow and the return type::
函数型は，引数の型，矢印と戻り値の型をスペースで区切って宣言します。 ::
    
    def foo(f: Int => String) = ...
    
    def bar(f: (Boolean, Double) => List[String]) = ...
    
.. Parentheses should be omitted wherever possible (e.g. methods of arity-1, such
   as ``Int => String``).
括弧は，省略できる場所ではどこでもそうするべきです（e.g. \ ``Int => String``\ の様な1引数のメソッド）。

.. toctree::

   arity_1
