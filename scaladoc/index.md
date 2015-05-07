Scaladoc
========

全てのパッケージ，クラス，トレイト，メソッド，その他のメンバにドキュメントを提供することはとても重要です。
Scaladocは一般にJavadocの慣習に従いますが，記述を簡潔にすませるための機能が多数追加されています。

普通は，書式よりもその内容や書き方を気にしたいと思います。Scaladocは経験豊富なユーザと同様に初心者にも便利で無くてはなりません。
この目的を達成する方法はとても単純です。すなわち，説明の詳細度を上げて，簡明な要約から始め（熟達したユーザの参考として有益です），
詳細部ではより丁寧な例（熟練者は無視するかもしれませんが，初心者には何よりも貴重なものです）を提供することです。

Scaladocの一般的な書式は次の様なものです。 :

    /**
     * これは何を説明しようとしているかの簡潔な記述です。
     *
     * これは我々がドキュメント化しようとしているものを更に記述したものです。
     * どのように動くのか，何をするのかについて更なる詳細を提供します。
     */
     def myMethod = {}

単純で短いドキュメンテーションしか必要の無いメソッドまたはメンバの場合，この書式も使えます。
:

    /** 何かとても単純な事をする */
    def simple = {}

一般的なスタイル
----------------

首尾一貫した様式を保つことが大切です。また，あなたのコードを見慣れていない人と，簡潔なリファレンスを求めている熟練者の両方を
ターゲットとしたscaladocを書くことも大切です。本節では，一般的な共通のガイドラインを列挙します。

\* なるべく早く要点を書く様にしましょう。例えば，"if some condition
return true"と書くのではなく"returns true if some condition"と書きます。
.. \* Try to format the first sentence of a method as "Returns XXX", as
in "Returns the first object of the List", as opposed to "this method
returns" or "get the first" etc. Methods typically **return** things. \*
最初のセンテンスは"Returns
XXX"という形式にするよう心がけましょう。例えば，"Returns the first
object of the List"の様に書き，"this method returns"や"get the
first"などとは書かない様にしましょう。メソッドは大抵何かしらを**返す**ものです。
.. \* This same goes for classes; omit "This class does XXX"; just say
"Does XXX" \* これはクラスにもあてはまります。つまり，"This class does
XXX"ではなく，単に"Does XXX"と書きましょう。 .. \* Create links to
referenced Scala Library classes using the square-bracket syntax, e.g.
`[[scala.Option]]` \*
角括弧構文を使って参照するScalaライブラリクラスへのリンクを作りましょう。e.g.
`[[scala.Option]]` .. \* Summarize a method's return value in the
`@return` annotation, leaving a longer description for the main
scaladoc. \*
メソッドの返り値の要約を`@return`アノテーションに書き，長い説明はscaladocの本体に残しておきます。
.. \* If the documentation of a method is a one line description of what
that method returns, do not repeat it with an `@return` annotation. \*
メソッドのドキュメンテーションが，そのメソッドが返す値を1行で説明するだけだったら，`@return`アノテーションで繰り返す必要はありません。
.. \* Document what the method *does do* not what the method *should
do*. In other words, say "returns the result of applying f to x" rather
than "return the result of applying f to x". Subtle, but important. \*
メソッドが**するべき事**ではなく**する事**をドキュメントにしましょう。言い換えれば，"return
the result of applying f to x"と書くのではなく"returns the result of
applying f to x"と書きましょう。違いは微妙ですが，大切です。 .. \* When
referring to the instance of the class, use "this XXX", or "this" and
not "the XXX". For objects, say "this object". \*
クラスのインスタンスを参照するときは，"the XXX"ではなく，"this
XXX"または"this"と書きます。オブジェクトの場合は，"this
object"とします。 .. \* Make code examples consistent with this
guide. \* コード例はこのガイドと首尾一貫したものにしましょう。 .. \* Use
the wiki-style syntax instead of HTML wherever possible. \*
可能な場所ではどこでもHTMLではなくwikiスタイルの構文を使うようにしましょう。
.. \* Examples should use either full code listings or the REPL,
depending on what is needed (the simplest way to include REPL code is to
develop the examples in the REPL and paste it into the scaladoc). \*
コード例は完全なコードリストかREPLを，必要に応じて使いましょう（REPLコードを使う最も簡単な方法は，コード例をREPLで作ってそれをscaladocに貼り付けることです）。
.. \* Make liberal use of `@macro` to refer to commonly-repeated values
that require special formatting. \*
特別な書式を要する，共通の繰り返し使う値を参照する際には，惜しみなく`@macro`を使いましょう。

パッケージ
----------

各パッケージにscaladocを提供しましょう。パッケージのディレクトリにある`package.scala`というファイルに記述します。
例えば，パッケージ`parent.package.name.mypackage`では次のようになります。
:

    package parent.package.name

    /**
     ** これはパッケージを対象としたscaladocです。
     */
    package object mypackage {
    }

パッケージのドキュメンテーションは，そのパッケージにどのような類のクラスが含まれているかを最初に記述します。
次に，そのパッケージオブジェクトが何を提供するかを書きます。

パッケージのドキュメンテーションは，そのパッケージに含まれるクラスの完全なチュートリアルになっている必要はありません。
主要なクラスの概要と，その基本的な使用例を提供するべきです。クラスを参照する際は角括弧記法を忘れずに使いましょう。
:

    package my.package
    /**
     * Provides classes for dealing with complex numbers.  Also provides implicits for
     * converting to and from `Int`.
     *
     * ==Overview==
     * The main class to use is [[my.package.complex.Complex]], as so
     * {{{
     * scala> val complex = Complex(4,3)
     * complex: my.package.complex.Complex = 4 + 3i
     * }}}
     *
     * If you include [[my.package.complex.ComplexConversions]], you can 
     * convert numbers more directly
     * {{{
     * scala> import my.package.complex.ComplexConversions._
     * scala> val complex = 4 + 3.i
     * complex: my.package.complex.Complex = 4 + 3i
     * }}}
     */
    package complex {}

クラス，オブジェクト，トレイト
------------------------------

クラス，オブジェクト，トレイトは全てドキュメント化するべきです。最初のセンテンスでは，そのクラスやトレイトが何をするのかを要約して書きます。型パラメータは全て`@tparam`でドキュメント化しましょう。

### クラス

そのコンパニオンオブジェクトを使ってクラスのインスタンス生成を行う場合，そのクラスの説明の後にその旨を記述してください
（インスタンス生成に関する詳細はコンパニオンオブジェクトに記述します）。あいにく，今のところコンパニオンオブジェクトへの
リンクをインラインで作る方法はありませんが，生成されたscaladocのクラスドキュメントにはリンクが作られます。

コンストラクタを使ってクラスのインスタンス生成を行うのであれば，`@constructor`を使ってそれをドキュメント化しましょう。
:

    /**
     * A person who uses our application.
     *
     * @constructor create a new person with a name and age.
     * @param name the person's name
     * @param age the person's age in years
     */
    class Person(name:String, age:Int) {
    }

クラスが複雑であれば，一般的な利用例も書いておきましょう。

### オブジェクト

オブジェクトは様々な用途に使えるので，**どのように**使うか（e.g.
ファクトリとして，implicitメソッドのため）を
書いておく事が重要です。そのオブジェクトの用途がファクトリなら，`apply`メソッドに固有の記述を記述しましょう。
もしオブジェクトが`apply`メソッドをファクトリメソッドとして**使わない**のであれば，実際に使うメソッド名を
明記してください。 :

    /**
     * Factory for [[mypackage.Person]] instances.
     */
    object Person {
      /** Create a person with a given name and age.
       * @param name their name
       * @param age the age of the person to create
       */
      def apply(name:String,age:Int) = {}
      /** Create a person with a given name and birthdate
       * @param name their name
       * @param birthDate the person's birthdate
       * @return a new Person instance with the age determined by the 
       * birthdate and current date.
       */
      def apply(name:String,birthDate:java.util.Date) = {}
    }

オブジェクトに暗黙的変換メソッドがあれば，scaladocに利用例を示しましょう。
:

    /**
     * Implicits conversions and helpers for [[mypackage.Complex]] instances.
     *
     * {{{
     * import ComplexImplicits._
     * val c:Complex = 4 + 3.i
     * }}}
     */
    object ComplexImplicits {}

### トレイト

トレイトが何をするかの概要を書いたら，そのトレイトをミックスインしたクラスが実装しなければならないメソッドと型の概要を
記述します。そのトレイトを利用している既存のクラスがあれば，参照して下さい。

メソッドとその他のメンバ
------------------------

全てのメソッドをドキュメント化してください。他と同様に，そのメソッドが何をするかを要約したものを最初に書きます。
続いて，更に詳細を書いていきます。型パラメータと同様に`@tparam`を使ってメソッドパラメータもドキュメント化します。
カリー化される関数は，期待する使用法や慣例的な使用法を考慮して，より詳細な例を提供することを検討してください。
暗黙のパラメータでは，そのパラメータがどこから来るのか，そしてそのパラメータを使うために特別な手続きが必要
かどうかに特に注意してください。
