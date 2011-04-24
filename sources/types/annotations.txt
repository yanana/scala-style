.. Annotations
型注釈
-----------

.. Type annotations should be patterned according to the following template::
型注釈は次のテンプレートに従って記述します。 ::
    
    value: Type
    
.. This is the style adopted by most of the Scala standard library and all of
   Martin Odersky's examples.  The space between value and type helps the eye in
   accurately parsing the syntax.  The reason to place the colon at the end of the
   value rather than the beginning of the type is to avoid confusion in cases such
   as this one::
これは多くのScala標準ライブラリと，全てのMartin Odersky氏のコード例で採用されたスタイルです。\
値と型の間のスペースは文法を目で追いやすくしてくれます。コロンを型の前では無く値の後ろに置くのは，\
次の様な場合における混乱を避けるためです。 ::
    
    value :::
    
.. This is actually valid Scala, declaring a value to be of type ``::``.  Obviously,
   the prefix-style annotation colon muddles things greatly.  The other option is
   the "two space" syntax::
実際，これは\ ``::``\ 型の値を宣言する妥当なScalaコードです。当然ながら，前置記法の型注釈によるコロンは大いに\
混乱を引き起こします。もう1つ別の選択肢として，「スペース2つ」構文があります。 ::
    
    value : Type
    
.. This syntax is preferable to the prefix-style, but it is not widely adopted due
   to its increased verbosity.
この構文は前置記法よりも好ましいですが，その冗長性から広く採用されるには至っていません。

