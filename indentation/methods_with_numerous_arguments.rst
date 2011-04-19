.. Methods with Numerous Arguments
多数の引数をとるメソッド 
-------------------------------

.. When calling a method which takes numerous arguments (in the range of five or
   more), it is often necessary to wrap the method invocation onto multiple lines.
   In such cases, put all arguments on a line by themselves, indented two spaces
   from the current indent level::
多数の引数（5つ以上の）をとるメソッドを呼び出す際，複数行に分割した方が良い場合がよくあります。このとき，現在のインデントレベルからスペース2つ分インデントして全ての引数を配置してください。 ::
    
    foo(
      someVeryLongFieldName,
      andAnotherVeryLongFieldName,
      "this is a string",
      3.1415)
        
.. This way, all parameters line up, but you don't need to re-align them if
   you change the name of the method later on.
こうすると，メソッド名を後で変更した際に再度パラメータを整列する必要がありません。

.. Great care should be taken to avoid these sorts of invocations well into the
   length of the line.  More specifically, such an invocation should be avoided
   when each parameter would have to be indented more than 50 spaces to achieve
   alignment.  In such cases, the invocation itself should be moved to the next
   line and indented two spaces::
この類の呼び出しを避けるため，行の長さにも大いに気を配る必要があります。より具体的に言えば，各パラメータを整えるのに50あまりものスペースが必要となる場合にはこのような呼び出しは避けるべきです。この場合，呼び出しそのものを次の行に移動して2スペース分インデントすると良いでしょう。 ::
    
    // right!
    val myOnerousAndLongFieldNameWithNoRealPoint = 
      foo(
        someVeryLongFieldName,
        andAnotherVeryLongFieldName,
        "this is a string",
        3.1415)
    
    // wrong!
    val myOnerousAndLongFieldNameWithNoRealPoint = foo(someVeryLongFieldName,
                                                       andAnotherVeryLongFieldName,
                                                       "this is a string",
                                                       3.1415)
                                                       
.. Better yet, just try to avoid any method which takes more than two or three
   parameters!
更に，3，4個以上の引数をとるメソッドを使わないようにすれば言うことはありません!

