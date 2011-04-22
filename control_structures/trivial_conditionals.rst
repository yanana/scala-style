.. Trivial Conditionals
ささいな条件文
--------------------

.. There are certain situations where it is useful to create a short ``if``/``else``
   expression for nested use within a larger expression.  In Java, this sort of
   case would traditionally be handled by the ternary operator (``?``/``:``), a
   syntactic device which Scala lacks.  In these situations (and really any time
   you have a extremely brief ``if``/``else`` expression) it is permissible to place
   the "then" and "else" branches on the same line as the ``if`` and ``else``
   keywords::
比較的大きな式の中で，ネストした短い\ ``if``/``else``\ 式が使えると便利な事があります。\
Javaだったら，伝統的に3項演算子（\ ``?``/``:``\ ）を使うところですが，Scalaはこの構文を持ち合わせていません。\
こういう状況では（または極めて簡素な\ ``if``/``else``\ 式を持つ場合はどこでも），\
"then"と"else"の分岐を\ ``if``/``else``\ キーワードと同じ行に書くことが許されます。 ::
    
    val res = if (foo) bar else baz
    
.. The key here is that readability is not hindered by moving both branches inline
   with the ``if``/``else``.  Note that this style should never be used with
   imperative ``if`` expressions nor should curly braces be employed.
ここで重要な事は，各分岐を\ ``if``/``else``\ とインラインにしても可読性は損なわれないという事です。\
この記法は，命令的な（函数的ではない）\ ``if``\ 式では決して使ってはならず，また波括弧を伴うべきではない\
ことに注意してください。

