1引数の関数型
=============

Scalaには1引数の関数を宣言するのに使われる特別なシンタックスがあります。例えば次のようなものです。
:

    def map[B](f: A => B) = ...

具体的に言うと，パラメータ型の括弧は省略する事ができます。そのため，不要に冗長になることを防ぐため，
`f`の型を`(A) => B`として宣言しませんでした。より極端な例を考えてみると，次のようになります。
:

    // 誤り！
    def foo(f: (Int) => (String) => (Boolean) => Double) = ...

    // 正しい！
    def foo(f: Int => String => Boolean => Double) = ...

括弧を省略することによって，6文字の節約をし，劇的に型表現の可読性を上げることができました。