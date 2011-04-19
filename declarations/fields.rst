.. Fields
フィールド
~~~~~~

.. Fields should follow the declaration rules for methods, taking special note of
   access modifier ordering and annotation conventions.
フィールドはメソッド宣言のルールに従いますが，アクセス修飾子の順序とアノテーションの規約については注意が必要です。

.. Lazy vals should use the ``lazy`` keyword directly before the ``val``::
遅延評価valは\ ``lazy``\ キーワードを\ ``val``\ の直前に置くべきです。 ::

    private lazy val foo = bar()
