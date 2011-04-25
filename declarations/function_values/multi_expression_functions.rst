.. Multi-Expression Functions
複数の式を持つ関数
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Most function values are less trivial than the examples given above.  Many contain
   more than one expression.  In such cases, it is often more readable to split the
   function value across multiple lines.  When this happens, only style (1) should
   be used.  Style (4) becomes extremely difficult to follow when enclosed in large
   amounts of code.  The declaration itself should loosely follow the declaration
   style for methods, with the opening brace on the same line as the assignment or
   invocation, while the closing brace is on its own line immediately following the
   last line of the function.  Parameters should be on the same line as the opening
   brace, as should the "arrow" (``=>``)::
殆どの関数値はこれまでに見てきたものよりも複雑になり，多くが複数の式を持ったものになるでしょう。\
このような複雑な関数値は，行を分割すると読みやすくなることが多いです。\
複数行に分割した場合には，1.のスタイルを適用します。4.のスタイルは，大きなコードの中では極端に\
読み辛くなってしまうためです。宣言そのものはメソッドの宣言スタイルにほぼ従い，左波括弧は代入または呼び出し\
と同じ行に置き，右波括弧は関数の最後の行のすぐ次の行に書きます。\
パラメータと矢印（\ ``=>``\ ）は左波括弧と同じ行に置きます。 ::
    
    val f1 = { (a: Int, b: Int) =>
      a + b
    }
    
.. As noted earlier, function values should leverage type inference whenever
   possible.
前に書いた通り，関数値は型推論を使えるところではどこでも最大限に活用するべきです。

