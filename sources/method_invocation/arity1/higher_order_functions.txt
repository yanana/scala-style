.. Higher-Order Functions
高階函数
~~~~~~~~~~~~~~~~~~~~~~

.. As noted, methods which take functions as parameters (such as ``map`` or ``foreach``)
   should be invoked using infix notation.  It is also *possible* to invoke such
   methods in the following way::
前述の通り，函数をパラメータとして取るメソッド（\ ``map``\ や\ ``foreach``\ の様な）は中値記法で呼び出す\
べきですが，次の様に呼び出すことも\ **可能**\ ではあります。 ::
    
    names.map { _.toUpperCase }     // 誤り！
    
.. This style is *not* the accepted standard!  The reason to avoid this style is
   for situations where more than one invocation must be chained together::
この呼び出し方は標準としては受け入れられ\ **ません**\ ！というのも，メソッドチェインの場合 ::
    
    // 誤り！
    names.map { _.toUpperCase }.filter { _.length > 5 }
    
    // 正しい！
    names map { _.toUpperCase } filter { _.length > 5 }

Both of these work, but the former exploits an extremely unintuitive wrinkle in
Scala's grammar.  The sub-expression ``{ _.toUpperCase }.filter`` when taken in
isolation looks for all the world like we are invoking the ``filter`` method on
a function value.  However, we are actually invoking ``filter`` on the result of
the ``map`` method, which takes the function value as a parameter.  This syntax
is confusing and often discouraged in Ruby, but it is shunned outright in Scala.
これらは共に意図通りに動作しますが，前者は，極めて非直観的なScalaの文法の欠点を不当に利用したものです。\
途中の\ ``{ _.toUpperCase }.filter``\ の部分を取り出して見ると，\ ``filter``\ メソッドを\
函数値に対して呼び出している様に見えますが，実際には函数値をパラメータに取る\ ``map``\ メソッドの結果に対して\
\ ``filter``\ メソッドを呼び出しています。この構文は混乱の元であり，Rubyではたびたび使わない様に\
言われるものですが，Scalaではあからさまに敬遠されます。

