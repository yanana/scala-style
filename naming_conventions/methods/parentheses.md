括弧
====

Rubyとは違い，Scalaはメソッドが括弧を伴って**宣言されている**かどうか（引数が無いメソッドにのみ該当します）
に意味を持たせています。例えば， :

    def foo1() = ...

    def foo2 = ...

これらはコンパイル時に事なるメソッドとして解釈されます。`foo1`は括弧があろうと無かろうと呼び出す事ができますが，
`foo2`は括弧**あり**では呼び出す事が**できません**。

従って，メソッド宣言をいつ括弧ありでするべきか，またいつ括弧無しでするべきかについてのガイドラインに従う事が非常に重要です。

アクセッサ（フィールドでも，論理プロパティでも）として働くメソッドは，副作用がある場合を除いて括弧**なし**で宣言するべきです。
RubyとLiftは`!`を使って副作用があることを示しますが，括弧の使用の方が好ましいです[\#dsl\_note]\_。

さらには，呼び出し側は宣言に従うべきです。つまり，括弧付きで定義されていれば括弧付きで呼び出すということです。
わずかな文字数であっても節約したくなる誘惑にかられるかもしれませんが，このガイドラインに従えばコードは**とても**読みやすく，
メンテナンスしやすくなります。

    // 状態は変えません。birthdateの形で呼びます。
    def birthdate = firstName

    // 内部状態を更新します。age()の形で呼びます。
    def age() = {
      _age = updateAge(birthdate)
      _age
    }

**脚注**