.. Operators
演算子
---------

.. Symbolic methods (operators) should *always* be invoked using infix notation with
   spaces separated the target, the operator and the parameter::
記号メソッド（演算子）は， *常に* 対象オブジェクト，演算子と引数をスペースで区切った中置記法で記述するべきです。 ::
    
    // 正しい!
    "daniel" + " " + "Spiewak"
    
    // 誤り!
    "daniel"+" "+"spiewak"
    
.. For the most part, this idiom follows Java and Haskell syntactic conventions.
殆どの箇所で，このイディオムはJavaとHaskellの文法規約に従います。

.. Operators which take more than one parameter (they do exist!) should still be
   invoked using infix notation, delimited by spaces::
2つ以上の引数をとる演算子（実際にあります）もまた，スペース区切りの中置記法で呼び出すべきです。 ::
    
    foo ** (bar, baz)
    
.. Such operators are fairly rare, however, and should be avoided during API design.
こういった演算子は極めて稀で，またAPIを設計する際には避けるべきです。

.. Finally, the use of the ``/:`` and ``:\`` should be avoided in preference to the more explicit
   ``foldLeft`` and ``foldRight`` method of ``Iterator``.  The right-associativity of the ``/:`` 
   can lead to extremely confusing code, at the benefit of saving a few characters.
最後に，``Iterator`` のメソッド ``/:`` と ``:\`` の使用は避けて，より明示的な ``foldLeft`` と ``foldRight`` を使用するべきです。 ``/:`` の右結合は，数文字の節約に見合わず極めて可読性を下げる可能性があります。
