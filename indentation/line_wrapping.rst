.. Line Wrapping
行の折り返し
-------------

.. There are times when a single expression reaches a length where it becomes
   unreadable to keep it confined to a single line (usually that length is anywhere
   above 80 characters).  In such cases, the *preferred* approach is to simply
   split the expression up into multiple expressions by assigning intermediate results
   to values or by using the `pipeline operator`_.  However, this is not always a
   practical solution.
単一の式が読みづらい程に長くなってしまったら（大抵，80文字を越えるとそうなる），\
\ *好ましい*\ アプローチは，中間結果値を用意したり `パイプライン演算子`_ \
を使ってその式を分割することです。しかし，この手法が必ずしも常に現実的な解決策となる訳ではありません。

.. When it is absolutely necessary to wrap an expression across more than one line,
   each successive line should be indented two spaces from the *first*.  Also
   remember that Scala requires each "wrap line" to either have an unclosed
   parenthetical or to end with an infix binary function or operator in which the
   right parameter is not given::
式を二つ以上の行に分割する必要に迫られたら，続く行はスペース二つ分\ *最初の行*\ からインデントするべきです。\
また，Scalaは各「ラップされる行」に閉じていない括弧か，適切なパラメータが渡されていない中置の2項関数または演算子\
を要求する事も頭の片隅に留めておいてください。 ::
    
    val result = 1 + 2 + 3 + 4 + 5 + 6 +
      7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 +
      15 + 16 + 17 + 18 + 19 + 20
      
.. Without this trailing operator, Scala will infer a semi-colon at the end of a
   line which was intended to wrap, throwing off the compilation sometimes without
   even so much as a warning.
この演算子が無いと，ラップするつもりの行末にScalaはセミコロンを想定してしまいます。\
その結果，わかりやすい警告の無いままコンパイルに失敗します。

.. _pipeline operator: http://paste.pocoo.org/show/134013/

