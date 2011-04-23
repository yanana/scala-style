.. Arity-1
1引数の函数型
~~~~~~~

.. Scala has a special syntax for declaring types for functions of arity-1.  For
   example::
Scalaには一引数の関数を宣言するのに使われる特別なシンタックスがあります。例えば次のようなものです。 ::
    
    def map[B](f: A => B) = ...
    
.. Specifically, the parentheses may be omitted from the parameter type.  Thus, we
   did *not* declare ``f`` to be of type "``(A) => B``, as this would have been
   needlessly verbose.  Consider the more extreme example::
具体的に言うと，パラメータ型の括弧は省略する事ができます。そのため，不要に冗長になることを防ぐため， ``f`` の型を ``(A) => B`` として宣言しませんでした。より極端な例を考えてみると，次のようになります。 ::
    
    // 間違い!
    def foo(f: (Int) => (String) => (Boolean) => Double) = ...
    
    // 正しい!
    def foo(f: Int => String => Boolean => Double) = ...
    
.. By omitting the parentheses, we have saved six whole characters and dramatically
   improved the readability of the type expression.
括弧を省略することによって，6文字の節約をし，劇的に型表現の可読性を上げることができました。
