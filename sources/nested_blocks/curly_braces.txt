.. Curly Braces
波括弧
------------

.. Opening curly braces (``{``) must be on the same line as the declaration they
   represent::
左波括弧（\ ``{``\ ）は，その宣言と同じ行に置きます。 ::
    
    def foo = {
      ...
    }
    
.. Technically, Scala's parser *does* support GNU-style notation with opening braces
   on the line following the declaration.  However, the parser is not terribly
   predictable when dealing with this style due to the way in which semi-colon
   inference is implemented.  Many headaches will be saved by simply following the
   curly brace convention demonstrated above.
技術的には，ScalaのパーサはGNUスタイルの，つまり，宣言の次の行に左括弧を配置する記法をサポート\ *します*\ 。\
しかし，Scalaパーサのセミコロン推論の実装方法の制限から，このスタイルで書かれた場合には推論がうまくできません。\
上述の規約に従うことで，悩みの種は殆ど無くなります。


