宣言
====

クラス
------

クラス・オブジェクト・トレイトのコンストラクタは，行が「長すぎ」なければ（およそ100文字程度），1行で宣言するべきです。
行が長くなってしまう場合には，各コンストラクタ引数を行毎に配置して，スペース**4つ**でインデントします。
:

    class Person(name: String, age: Int) {
    }

    class Person(
        name: String,
        age: Int,
        birthdate: Date,
        astrologicalSign: String,
        shoeSize: Int,
        favoriteColor: java.awt.Color) {
      def firstMethod = ...
    }

クラス・オブジェクト・トレイトが何らか継承をしている場合，同様の規則があてはまります。100文字を越えなければ1行で宣言し，
越える場合にはスペース**4つ**で各引数をインデントし，継承している対象をスペース**2つ**でインデントします。
こうするとコンストラクタ引数と継承の違いが見た目で区別がつきます。 :

    class Person(
        name: String,
        age: Int,
        birthdate: Date,
        astrologicalSign: String,
        shoeSize: Int,
        favoriteColor: java.awt.Color) 
      extends Entity
      with Logging
      with Identifiable
      with Serializable {
    }

関数値
------

関数値を宣言するための様々なオプションをScalaは提供しています。例えば，次の宣言は全く同じものです。
:

1.  `val f1 = { (a: Int, b: Int) => a + b }`
2.  `val f2 = (a: Int, b: Int) => a + b`
3.  `val f3 = (_: Int) + (_: Int)`
4.  `val f4: (Int, Int) => Int = { _ + _ }`

この内，1.と4.を常に使うべきです。2.はこの例では短く簡潔に見えますが，複数行にわたる場合（よく起こる）には非常に
判り辛くなります。同様に，3.も簡潔に書けますが，見慣れない人にとっては関数値を作っているということが判読し難いです。

1.と4.のスタイルだけを使えば，関数値が使われている場所を特定するのが極めて容易になります。どちらのスタイルにおいても
波括弧（`{}`）を活用して，関数値がある事に気が付くための視覚的な手がかりとなります。
