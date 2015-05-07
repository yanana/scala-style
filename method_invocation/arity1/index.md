1引数のメソッド -------

Scalaには1引数のメソッドを呼び出す特別な構文があります。 :

    names.mkString(",")

    // は次と等しい

    names mkString ","

この構文は正式には「中値記法」として知られており，純粋関数的な（副作用の無い）メソッド -
`mkString`の様な - もしくは
パラメータとして関数を取るメソッド - `foreach`の様な -
に**のみ**使用されるべきです。 :

    // 正しい！
    names foreach { n => println(n) }
    names mkString ","
    optStr getOrElse "<empty>"

    // 誤り！
    javaList add item
