関数型
======

関数型は，引数の型，矢印と戻り値の型をスペースで区切って宣言します。 :

    def foo(f: Int => String) = ...

    def bar(f: (Boolean, Double) => List[String]) = ...

括弧は，省略できる場所ではどこでもそうするべきです（e.g.
`Int => String`の様な1引数のメソッド）。
