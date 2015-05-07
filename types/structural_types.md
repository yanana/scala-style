構造的部分型
============

構造的部分型は，行が50文字よりも短く収まるのなら1行で定義するべきです。それより長くなるようであれば，
複数行に分けて，型エイリアスに代入して使います。 :

    // 誤り！
    def foo(a: { def bar(a: Int, b: Int): String; val baz: List[String => String] }) = ...

    // 正しい！
    private type FooParam = {
      val baz: List[String => String]
      def bar(a: Int, b: Int): String
    }

    def foo(a: FooParam) = ...

50文字に満たないシンプルな構造的部分型はインラインで定義して用いて構いません。
:

    def foo(a: { val bar: String }) = ...

インラインで定義する場合は，上述の例でそうなっているように，その構造的部分型の要素はセミコロンと
スペース1つで区切り，左波括弧の後ろと右波括弧の前にスペースを置きます。
