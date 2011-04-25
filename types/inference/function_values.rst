.. Function Values
関数値
~~~~~~~~~~~~~~~

.. Function values support a special case of type inference which is worth calling
   out on its own::
呼び出し時に役立つ，型推論の特殊なケースを関数値はサポートします。 ::
    
    val ls: List[String] = ...
    ls map { str => str.toInt }
    
.. In cases where Scala already knows the type of the function value we are declaring,
   there is no need to annotate the parameters (in this case, ``str``).  This is an
   intensely helpful inference and should be preferred whenever possible.  Note that
   implicit conversions which operate on function values will nullify this inference,
   forcing the explicit annotation of parameter types.
宣言しようとしている関数値の型をScalaが既に知っていれば，パラメータに型注釈を付与する必要は\
ありません（上記例の場合，\ ``str``\ が該当）。これは非常に便利なので，最大限活用しましょう。\
ただし，関数値を対象とする暗黙の型変換は，この型推論を無効にする事に注意しましょう。

