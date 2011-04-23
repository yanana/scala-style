.. Arity-1
1引数のメソッド
-------

.. Scala has a special syntax for invoking methods of arity-1 (one argument)::
Scalaには1引数のメソッドを呼び出す特別な構文があります。 ::
    
    names.mkString(",")
    
    // は次と等しい
    
    names mkString ","
    
.. This syntax is formally known as "infix notation".  It should *only* be used for
   purely-functional methods (methods with no side-effects) - such as ``mkString`` -
   or methods which take functions as parameters - such as ``foreach``::
この構文は正式には「中値記法」として知られており，純粋函数的な（副作用の無い）メソッド - ``mkString``\ の様な - もしくは\
パラメータとして函数を取るメソッド - ``foreach``\ の様な - に\ **のみ**\ 使用されるべきです。 ::
    
    // 正しい！
    names foreach { n => println(n) }
    names mkString ","
    optStr getOrElse "<empty>"
    
    // 誤り！
    javaList add item

.. toctree::

   higher_order_functions
