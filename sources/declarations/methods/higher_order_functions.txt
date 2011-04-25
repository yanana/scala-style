.. Higher-Order Functions
高階関数
~~~~~~~~~~~~~~~~~~~~~~

.. It's worth keeping in mind when declaring higher-order functions the fact that
   Scala allows a somewhat nicer syntax for such functions at call-site when the
   function parameter is curried as the last argument.  For example, this is the
   ``foldl`` function in SML::
高階関数を宣言する際には，関数パラメータが最後にあってカリー化されるときに許される，\
呼び出し側にとっては喜ばしい構文がある事を心に留めておくといいでしょう。\
例えば，これはSMLの\ ``foldl``\ 関数です。 ::
    
    fun foldl (f: ('b * 'a) -> 'b) (init: 'b) (ls: 'a list) = ...
    
.. In Scala, the preferred style is the exact inverse::
Scalaでは，この真逆が好ましいスタイルです。 ::
    
    def foldLeft[A, B](ls: List[A])(init: B)(f: (B, A) => B) = ...
    
.. By placing the function parameter *last*, we have enabled invocation syntax like
   the following::
関数パラメータを\ **最後**\ にすることで，呼び出し側の構文を次のようにできます。 ::
    
    foldLeft(List(1, 2, 3, 4))(0) { _ + _ }
    
.. The function value in this invocation is not wrapped in parentheses; it is
   syntactically quite disconnected from the function itself (``foldLeft``).  This
   style is preferred for its brevity and cleanliness.
この呼び出しで，関数値は括弧で囲われておらず，それゆえ関数値が関数そのもの（\ ``foldLeft``\ ）から分離しています。\
その簡潔さから，このスタイルは好ましいと言えます。

