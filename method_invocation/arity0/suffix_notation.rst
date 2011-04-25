.. Suffix Notation
後置記法
~~~~~~~~~~~~~~~

.. Scala allows methods of arity-0 to be invoked using suffix notation::
Scalaでは，arity-0のメソッドは後置記法で呼び出す事が可能です。 ::
    
    names.toList
    
    // は次と同様
    
    names toList
    
.. This style should be used with great care.  In order to avoid ambiguity in Scala's
   grammar, any method which is invoked via suffix notation must be the *last* item
   on a given line.  Also, the following line must be completely empty, otherwise
   Scala's parser will assume that the suffix notation is actually infix and will
   (incorrectly) attempt to incorporate the contents of the following line into the
   suffix invocation::
この記法の使用には十分注意が必要です。構文解析の曖昧さを回避するため，後置記法で呼び出されるメソッドは，\
\ **必ず**\ 行の最後に位置しなければなりません。また，後続の行は空行でなくてはならず，さもなければ\
Scalaのパーサはそのメソッドを（誤って）中値記法とみなし，後続の行をまとめて解析しようとします。 ::
    
    names toList
    val answer = 42        // コンパイルできない！
    
.. This style should only be used on methods with no side-effects, preferably ones
   which were declared without parentheses (see above).  The most common acceptable
   case for this syntax is as the last operation in a chain of infix method calls::
メソッドの後置記法は，副作用の無い，なるべくなら（上述の）括弧なしで宣言されたメソッドに対して使用するべきです。\
この記法の最もよく見られるケースは，中値記法のメソッドチェインの最後の操作としての用法です。 ::
    
    // 慣用的かつ許容し得る用法
    names map { _.toUpperCase } filter { _.length > 5 } toStream

.. In this case, suffix notation must be used with the ``toStream`` function,
   otherwise a separate value assignment would have been required.  However, under
   less specialized circumstances, suffix notation should be avoided::
この場合，\ ``toStream``\ 関数は後置記法で呼び出される必要があり，そうでなければ，分離した値の代入が必要になります。\
しかし，より一般的に言えば，後置記法は避けるべき場合の方が多いでしょう。 ::
    
    // 誤り！
    val ls = names toList
    
    // 正しい！
    val ls = names.toList
    
.. The primary exception to this rule is for domain-specific languages.  One very
   common use of suffix notation which goes against the above is converting a
   ``String`` value into a ``Regexp``::
このルールに対する最も主要な例外が，ドメイン特化言語です。上記のルールに反する，多々見受けられる用法の1つが\ ``String``\ 値\
の\ ``Regexp``\ への変換です。 ::
    
    // 許容し得る用法
    val reg = """\d+(\.\d+)?"""r
    
.. In this example, ``r`` is actually a method available on type ``String`` via an
   implicit conversion.  It is being called in suffix notation for brevity.
   However, the following would have been just as acceptable::
この例で，\ ``r``\ は暗黙の変換を通じて\ ``String``\ 型で利用可能なメソッドであり，\
簡潔さのために後置記法で呼び出されています。しかし，次の例の方がより好ましいでしょう。 ::
    
    // より安全な呼び出し方
    val reg = """\d+(\.\d+)?""".r

