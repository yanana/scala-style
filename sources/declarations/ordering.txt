.. Ordering Of Class Elements
クラス要素の順序
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. All class/object/trait members should be declared interleaved with newlines.
   The only exceptions to this rule are ``var`` and ``val``.  These may be declared
   without the intervening newline, but only if none of the fields have scaladoc
   and if all of the fields have simple (max of 20-ish chars, one line) definitions::
クラス・オブジェクト・トレイトのメンバは全て，空行を挟んで宣言するべきです。\
\ ``var``\ と\ ``val``\ だけがこのルールに対する例外になります。これらの要素は，scaladocのあるフィールドが1つも無く，\
全てのフィールドがシンプルな（最大で20文字程度で，1行のもの）定義で収まる場合を除いて，空行を挟まずに宣言します。 ::
    
    class Foo {
      val bar = 42
      val baz = "Daniel"
      
      def doSomething() { ... }
      
      def add(x: Int, y: Int) = x + y
    }
    
.. Fields should *precede* methods in a scope.  The only exception is if the ``val``
   has a block definition (more than one expression) and performs operations which
   may be deemed "method-like" (e.g. computing the length of a ``List``).  In such
   cases, the non-trivial ``val`` may be declared at a later point in the file as
   logical member ordering would dictate.  This rule *only* applies to ``val`` and
   ``lazy val``!  It becomes very difficult to track changing aliases if ``var``
   declarations are strewn throughout class file.
スコープの中で，フィールドはメソッドの\ **前に**\ あるべきです。その例外は，\ ``val``\ の定義がブロックに\
なっている（2つ以上の式を持っている）と，「メソッドのような」操作（e.g. \ ``List``\ の長さを操作する）を持つ場合です。\
そのような場合，\ ``val``\ は，ファイルの後ろの方の，論理的な順序が意味する通りに配置します。\
このルールは\ ``val``\ と\ ``lazy val``\ に\ **のみ**\ 適用されます！\ ``var``\ の定義がファイル中に散在すると，\
その変化を辿るのが極めて困難になります。

