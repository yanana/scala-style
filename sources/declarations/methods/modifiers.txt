.. Modifiers
修飾子
~~~~~~~~~

.. Method modifiers should be given in the following order (when each is applicable):
メソッド修飾子は次の順序で与えるべきです（それぞれ適用可能な場合）。

.. #. Annotations, *each on their own line*
   #. Override modifier (``override``)
   #. Access modifier (``protected``, ``private``)
   #. Final modifier (``final``)
   #. ``def``
#. アノテーション，\ **1行に1つずつ**
#. オーバーライド修飾子（\ ``override``\ ）
#. アクセス修飾子（\ ``protected``\ ，\ ``private``\ ）
#. ファイナル修飾子（\ ``final``\ ）
#. ``def``

::
    
    @Transaction
    @throws(classOf[IOException])
    override protected final def foo() { 
      ...
    }
    
.. Body
メソッド本体
~~~~

.. When a method body comprises a single expression which is less than 30 (or so)
   characters, it should be given on a single line with the method::
メソッド本体が30文字（かそこいら）未満の単一の式で構成される場合は，メソッド宣言と共に1行で書き下すべきです。 ::
    
    def add(a: Int, b: Int) = a + b
    
.. When the method body is a single expression *longer* than 30 (or so) characters
   but still shorter than 70 (or so) characters, it should be given on the following
   line, indented two spaces::
メソッド本体がそれ以上長く，70文字（かそこいら）未満であれば，スペース2つでインデントして次の行に記述します。 ::
    
    def sum(ls: List[String]) =
      (ls map { _.toInt }).foldLeft(0) { _ + _ }
      
.. The distinction between these two cases is somewhat artificial.  Generally
   speaking, you should choose whichever style is more readable on a case-by-case
   basis.  For example, your method declaration may be very long, while the expression
   body may be quite short.  In such a case, it may be more readable to put the
   expression on the next line rather than making the declaration line unreadably
   long.
これら2つの場合分けは，幾分属人的なものです。概して言えば，ケースバイケースで可読性の高い方を選択するべきです。\
例えば，メソッド宣言が非常に長い一方で本体はとても短かったとします。この場合，本体を次の行に持って行った方が\
宣言をわかりやすくして，読みやすくなるかもしれません。

.. When the body of a method cannot be concisely expressed in a single line or is
   of a non-functional nature (some mutable state, local or otherwise), the body
   must be enclosed in braces::
メソッド本体が1行では適切に表現する事が難しかったり，関数的な性質のものではない（ミュータブルな状態や，ローカルなものなど）場合，\
本体はブレースで囲うべきです。 ::
    
    def sum(ls: List[String]) = {
      val ints = ls map { _.toInt }
      ints.foldLeft(0) { _ + _ }
    }
    
.. Methods which contain a single ``match`` expression should be declared in the
   following way::
単一の\ ``match``\ 式からなるメソッドは次のように宣言しましょう。 ::
    
    // 正しい！
    def sum(ls: List[Int]): Int = ls match {
      case hd :: tail => hd + sum(tail)
      case Nil => 0
    }
    
.. *Not* like this::
こうでは\ **ありません**\ 。 ::
    
    // 誤り！
    def sum(ls: List[Int]): Int = {
      ls match {
        case hd :: tail => hd + sum(tail)
        case Nil => 0
      }
    }
    
