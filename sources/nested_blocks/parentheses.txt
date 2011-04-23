.. Parentheses
丸括弧
-----------

.. In the rare cases when parenthetical blocks wrap across lines, the opening and
   closing parentheses should be unspaced and kept on the same lines as their content
   (Lisp-style)::
稀なケースですが，丸括弧で囲まれたブロックが複数行に渡る場合，括弧とその中身はスペースを置かず，\
同じ行に配置します（Lispスタイル）。 ::
    
    (this + is a very ++ long *
      expression)
      
.. The only exception to this rule is when defining grammars using parser combinators::
パーサコンビネータを使って文法規則を定義するときが，唯一の例外になります。 ::
    
    lazy val e: Parser[Int] = (
        e ~ "+" ~ e  ^^ { (e1, _, e2) => e1 + e2 }
      | e ~ "-" ~ e  ^^ { (e1, _, e2) => e1 - e2 }
      | """\d+""".r  ^^ { _.toInt }
    )
    
.. Parser combinators are an internal DSL, however, meaning that many of these style
   guidelines are inapplicable.
パーサコンビネータは内部DSLですが，これはつまりスタイルガイドラインの多くが意味を成さないという事です。


