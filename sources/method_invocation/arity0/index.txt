.. Arity-0
引数のないメソッド
-------

.. Scala allows the omission of parentheses on methods of arity-0 (no arguments)::
Scalaでは，引数のないメソッドの呼び出しにおいて括弧を省略することができます。 ::
    
    reply()
    
    // は次と等しい
    
    reply
    
.. However, this syntax should *only* be used when the method in question has no
   side-effects (purely-functional).  In other words, it would be acceptable to
   omit parentheses when calling ``queue.size``, but not when calling ``println()``.
   This convention mirrors the method declaration convention given above.
しかし，この構文は，そのメソッドが副作用の無い（純粋函数的な）場合に\ **のみ**\ 使うべきです。\
つまり，\ ``queue.size``\ を呼び出す時には括弧を省略できるが，\ ``println()``\ ではできないということです。\
この慣習は，上述のメソッド宣言における規約と対をなします。

.. Religiously observing this convention will *dramatically* improve code readability
   and will make it much easier to understand at a glance the most basic operation
   of any given method.  Resist the urge to omit parentheses simply to save two
   characters!
この規約を忠実に守ることによって，コードの可読性は\ **劇的に**\ 向上し，\
単に2文字書く労力を節約するために括弧を省略したくなる衝動を抑えて下さい！

.. toctree::

   suffix_notation
