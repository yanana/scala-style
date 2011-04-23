.. Methods
メソッド
~~~~~~~

.. Methods should be declared according to the following pattern::
メソッドは次のパターンに従って宣言するべきです。 ::
    
    def foo(bar: Baz): Bin = expr
    
.. The only exceptions to this rule are methods which return ``Unit``.  Such methods
   should use Scala's syntactic sugar to avoid accidentally confusing return types::
ただし，\ ``Unit``\ 型を返すメソッドはこのルールへの反例となります。混乱を防ぐため，シンタックスシュガーを用いて次の様に書くべきです。 ::
    
    def foo(bar: Baz) {       // 戻り値の型はUnit
      expr
    }
    
.. toctree::

   methods/modifiers
   methods/currying
   methods/higher_order_functions
