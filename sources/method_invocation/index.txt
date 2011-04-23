.. Method Invocation
メソッド呼び出し
=================

.. Generally speaking, method invocation in Scala follows Java conventions.  In
   other words, there should not be a space between the invocation target and the
   dot (``.``), nor a space between the dot and the method name, nor should there
   be any space between the method name and the argument-delimiters (parentheses).
   Each argument should be separated by a single space *following* the comma (``,``)::
Scalaでは，メソッド呼び出しは一般にJavaの慣習に従います。言い方を変えれば，呼び出し先とドット（\ ``.``\ ）の間\
，ドットとメソッド名の間，そしてメソッド名と引数を囲う括弧の間にスペースを入れないということです。\
各引数は，カンマ（\ ``,``\ ）に\ **続く**\ スペース1つで区切られます。 ::
    
    foo(42, bar)
    target.foo(42, bar)
    target.foo()

.. toctree::

   arity0/index
   arity1/index
   operators
