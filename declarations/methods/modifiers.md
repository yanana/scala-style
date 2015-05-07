修飾子
======

メソッド修飾子は次の順序で与えるべきです（それぞれ適用可能な場合）。

1.  アノテーション，**1行に1つずつ**
2.  オーバーライド修飾子（`override`）
3.  アクセス修飾子（`protected`，`private`）
4.  ファイナル修飾子（`final`）
5.  `def`

<!-- -->

    @Transaction
    @throws(classOf[IOException])
    override protected final def foo() { 
      ...
    }

メソッド本体 \~\~\~\~

メソッド本体が30文字（かそこいら）未満の単一の式で構成される場合は，メソッド宣言と共に1行で書き下すべきです。
:

    def add(a: Int, b: Int) = a + b

メソッド本体がそれ以上長く，70文字（かそこいら）未満であれば，スペース2つでインデントして次の行に記述します。
:

    def sum(ls: List[String]) =
      (ls map { _.toInt }).foldLeft(0) { _ + _ }

これら2つの場合分けは，幾分属人的なものです。概して言えば，ケースバイケースで可読性の高い方を選択するべきです。
例えば，メソッド宣言が非常に長い一方で本体はとても短かったとします。この場合，本体を次の行に持って行った方が
宣言をわかりやすくして，読みやすくなるかもしれません。

メソッド本体が1行では適切に表現する事が難しかったり，関数的な性質のものではない（ミュータブルな状態や，ローカルなものなど）場合，
本体はブレースで囲うべきです。 :

    def sum(ls: List[String]) = {
      val ints = ls map { _.toInt }
      ints.foldLeft(0) { _ + _ }
    }

単一の`match`式からなるメソッドは次のように宣言しましょう。 :

    // 正しい！
    def sum(ls: List[Int]): Int = ls match {
      case hd :: tail => hd + sum(tail)
      case Nil => 0
    }

こうでは**ありません**。 :

    // 誤り！
    def sum(ls: List[Int]): Int = {
      ls match {
        case hd :: tail => hd + sum(tail)
        case Nil => 0
      }
    }
