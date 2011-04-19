.. Comprehensions
内包表記
--------------

.. Scala has the ability to represent ``for``-comprehensions with more than one
   generator (usually, more than one ``<-`` symbol).  In such cases, there are two
   alternative syntaxes which may be used::
Scalaは，一つ以上のジェネレータ（一般に，一つ以上の ``<-`` シンボル）を使った ``for`` 内包表記を表現する事ができます。この場合，利用可能な二つの方法があります。 ::
    
    // 誤り!
    for (x <- board.rows; y <- board.files) 
      yield (x, y)
    
    // 正しい!
    for {
      x <- board.rows
      y <- board.files
    } yield (x, y)
    
.. While the latter style is more verbose, it is generally considered easier to read
   and more "scalable" (meaning that it does not become obfuscated as the complexity
   of the comprehension increases).  You should prefer this form for all
   ``for``-comprehensions of more than one generator.  Comprehensions with only a
   single generator (e.g. ``for (i <- 0 to 10) yield i``) should use the first
   form (parentheses rather than curly braces).
後者のスタイルはより冗長ですが，一般には読みやすく，より「スケーラブル」である（内包が複雑になってわかりにくくなる事が無い，という意味で）と言えます。二つ以上のジェネレータを含む ``for`` 内包表記は，全てこのフォームで書くべきです。ジェネレータを一つだけ持つ内包表記（e.g. ``for(i <- 0 to 10) yield i`` ）は，最初のフォーム（波括弧ではなく括弧）を用いるべきです。

.. The exceptions to this rule are ``for``-comprehensions which lack a ``yield``
   clause.  In such cases, the construct is actually a loop rather than a functional
   comprehension and it is usually more readable to string the generators together
   between parentheses rather than using the syntactically-confusing ``} {``
   construct::
このルールに対する例外は， ``yield`` 節の無い ``for`` 内包表記です。この場合， ::
    
    // 誤り!
    for {
      x <- board.rows
      y <- board.files
    } {
      printf("(%d, %d)", x, y)
    }
    
    // 正しい!
    for (x <- board.rows; y <- board.files) {
      printf("(%d, %d)", x, y)
    }

.. Finally, ``for`` comprehensions are preferred to chained calls to
   ``map``, ``flatMap``, and ``filter``, as this can get difficult
   to read (this is one of the purposes of the enhanced ``for`` 
comprehension).
結果として， ``for`` 内包表記はその可読性の高さ（これは ``for`` 内包表記を拡張した理由の一つです）から ``map`` ， ``flatMap`` ，そして ``filter`` の連鎖呼び出しよりも好ましいと言えます。
