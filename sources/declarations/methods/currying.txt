.. Multiple Parameter Lists
複数のパラメータリスト
~~~~~~~~~~~~~~~~~~~~~~~~

.. In general, you should only use multiple parameter lists if there is a good reason to do so.
   These methods (or similarly declared functions) have a more verbose declaration and invocation syntax and are
   harder for less-experienced Scala developers to understand.  
一般に，そうする理由があるときにだけ複数のパラメータリストを使うべきです。複数のパラメータリストを持つメソッドや函数は，宣言も呼び出し側のコードも冗長になり，経験の少ない開発者にとっては判り辛くなります。

.. There are three main reasons you should do this:
複数のパラメータリストを使うべき主な理由が3つあります。

.. #. For a fluent API
#. 流れるようなインターフェース
   
..   Multiple parameter lists allow you to create your own "control structures"::
    複数のパラメータリストを使えば，自前の「制御構造」を作ることができます。 ::

    def unless(exp:Boolean)(code: => Unit) = if (!exp) code
    unless(x < 5) {
      println("x was not less than five")
    }

.. #. Implicit Parameters
#. 暗黙のパラメータ

..    When using implicit parameters, and you use the ``implicit`` keyword, it applies to the entire parameter list.
      Thus, if you want only some parameters to be impicit, you must use multiple parameter lists.
    ``implicit``\ キーワードを使って暗黙のパラメータを使っているとき，全てのパラメータリストにその効果が適用されます。このため，あるパラメータだけをimplicitにしたい場合は複数のパラメータリストを使用する必要があります。

.. #. For type inference
#. 型推論のため

..   When invoking a method using only some of the parameter lists, the type inferencer can 
     allow a simpler syntax when invoking the remaining parameter lists.  Consider fold::
   パラメータリストの一部だけ使ってメソッドを呼び出す時，型推論によって残りのパラメータリストをシンプルにすることができます。foldを例に考えてみましょう。 ::

    def foldLeft[B](z:B)(op: (A,B) => B):B
    List("").foldLeft(0)(_ + _.length)

    // 代わりにこうすると，
    def foldLeft[B](z: B, op: (B, A) => B): B
    // 上記の呼び出しはうまくいかず，型を明記しないといけない
    List("").foldLeft(0, (b: Int, a: String) => a + b.length)
    List("").foldLeft[Int](0, _ + _.length)

.. For complex DSLs, or with type-names that are long, it can be difficult to fit the entire signature on one line.  In those cases,
   alight the open-paren of the parameter lists, one list per line (i.e. if you can't put them all on one line, put one each per
   line)::
複雑なDSLや長い型名を扱うとき，宣言を1行に収めるのが難しくなります。こういう場合には，パラメータリストを1行毎に揃えます（i.e. 1行に収められないときは，1行に1つずつ配置します）。 ::


    protected def forResource(resourceInfo:Any)
                             (f: (JsonNode) => Any)
                             (implicit urlCreator: URLCreator, configurer: OAuthConfiguration) = {
     

