波括弧
======

制御構造が純粋関数的な操作を表現する場合や，制御の分岐が1行で書き表される場合には，波括弧は使わない
方がいいでしょう。次の指針を覚えておいてください。

\* `if` - `else`節がある場合，波括弧はさけてください。`else`節がない場合は，

:   節の内容が1行であっても波括弧で括ってください。

\* `while` -
必ず波括弧で括ってください（`while`は純粋関数の流儀では使えません）。
.. \* `for` - Omit braces if you have a `yield` clause. Otherwise,
surround the contents with curly-braces, even if the contents are only a
single line. \* `for` -
`yield`節がある場合は，波括弧は使いません。無い場合は，節の内容が1行であっても波括弧で括ってください。
.. \* `case` - Omit braces if the `case` expression fits on a single
line. Otherwise, use curly braces for clarity (even though they are not
*required* by the parser). \* `case` -
`case`式が1行に収まる場合は，波括弧を使いません。1行に収まらなければ，

表現明快にするため，波括弧を使います（パーサが要求する訳ではありませんが）。

    val news = if (foo)
      goodNews()
    else
      badNews()

    if (foo) {
      println("foo was true")
    }

    news match {
      case "good" => println("Good news!")
      case "bad" => println("Bad news!")
    }
