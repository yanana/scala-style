多数の引数をとるメソッド
========================

多数の引数（5つ以上の）をとるメソッドを呼び出す際，複数行に分割した方が良い場合がよくあります。
このとき，現在のインデントレベルからスペース2つ分インデントして全ての引数を配置してください。
:

    foo(
      someVeryLongFieldName,
      andAnotherVeryLongFieldName,
      "this is a string",
      3.1415)

こうすると，メソッド名を後で変更した際に再度パラメータを整列する必要がありません。

この類の呼び出しを避けるため，行の長さにも大いに気を配る必要があります。より具体的に言えば，各パラメータを整えるのに
50あまりものスペースが必要となる場合にはこのような呼び出しは避けるべきです。この場合，呼び出しそのものを次の行に移動して
2スペース分インデントすると良いでしょう。 :

    // 正しい！
    val myOnerousAndLongFieldNameWithNoRealPoint = 
      foo(
        someVeryLongFieldName,
        andAnotherVeryLongFieldName,
        "this is a string",
        3.1415)

    // 誤り！
    val myOnerousAndLongFieldNameWithNoRealPoint = foo(someVeryLongFieldName,
                                                       andAnotherVeryLongFieldName,
                                                       "this is a string",
                                                       3.1415)

更に，3，4個以上の引数をとるメソッドを使わないようにすれば言うことはありません！
