アクセッサ・ミューテータ
========================

Scalaは，ミューテータ・アクセッサメソッドに`set`/`get`を前置するJavaの慣習に従い**ません**。
代わりに，以下の慣例があります。

> -   For accessors of *some* boolean properties, the name of the method
>     may be the capitalized name of the property with "`is`" prepended
>     (e.g. `isEmpty`). This should only be the case when no
>     corresponding mutator is provided. Please note that the
>     [Lift](http://liftweb.com) convention of appending "`_?`" to
>     boolean accessors is non-standard and not used outside of the Lift
>     framework.
> -   For mutators, the name of the method should be the name of the
>     property with "`_=`" appended. As long as a corresponding accessor
>     with that particular property name is defined on the enclosing
>     type, this convention will enable a call-site mutation syntax
>     which mirrors assignment.

-   **殆どの**ブーリアン・非ブーリアンプロパティのアクセッサにおいて，プロパティ名と同じメソッド名とします。
-   **いくらかの**ブーリアンプロパティのアクセッサにおいて，プロパティ名の語頭を大文字にして`is`を
    前置したもの（e.g. `isEmpty`）をメソッド名とすることもできます。
    ただし，これは対応するミューテータが無い場合にのみ適用すべきです。
    ブーリアンアクセッサにおける[Lift](http://liftweb.com)の"`_?`"を前置する慣習は，Liftフレームワーク以外では用いられて
    おらず，標準的なものでは無いと言うことに注意してください。
-   ミューテータメソッド名は，プロパティ名に"`_=`"を後置したものとするべきです。対応するアクセッサが上述した適切な
    ネーミングがされたものであれば，呼び出し側に対称性のある構文を提供できます。

<!-- -->

    class Foo {

      def bar = ...

      def bar_=(bar: Bar) {
        ...
      }

      def isBaz = ...
    }

    val foo = new Foo
    foo.bar             // アクセッサ
    foo.bar = bar2      // ミューテータ
    foo.isBaz           // ブーリアンプロパティ

極めて遺憾な事に，これらの慣習はJavaにおけるそれとアクセッサとミューテータでカプセル化されたプライベートフィールドの
命名において，その特質の違いから相反するものとなります。例えば，次のコードを見てください。
:

    public class Company {
        private String name;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }

アクセッサにおける上記の命名規則に従いながら，Scalaのこの規約を採用しようとしたとき，Scalaコンパイラは
`name`フィールドと`name`メソッドの名前が衝突していると文句を言ってくるでしょう。
この問題を回避する方法は多数あり，コミュニティではまだ標準化がなされていません。
次のコード例は，数多の回避方法から，エラーになり辛い規約の1つを示しています。
:

    class Company {
      private val _name: String = _

      def name = _name

      def name_=(name: String) {
        _name = name
      }
    }

ハンガリアン記法は最低最悪に見苦しいものですが，識別子をぐちゃぐちゃにせずに`_name`フィールド
よりも明確にできるという利点はあります。`name_`と打ちたかったのを`name _`と間違えて打つ危険を避ける
ため，アンダースコアは後置よりも前置の方が好ましいでしょう。Scalaの型推論を多用すると，このタイプミスが
極めて判り辛いエラーを招く可能性があります。

Javaの様な，アクセッサ・ミューテータを必要とする言語でフィールドが利用される事が多々あると言うことを気に留めておいてください。
選択を迫られたら，常にフィールドをメソッドに優先してください。
