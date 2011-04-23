.. "Void" Methods
"Void"メソッド
~~~~~~~~~~~~~~

.. The exception to the "annotate everything public" rule is methods which return
   ``Unit``.  *Any* method which returns ``Unit`` should be declared using Scala's
   syntactic sugar for that case::
\ ``Unit``\ 型を返すメソッドは，「全てをパブリックとする」ルールの例外です。\ *全ての*\ \ ``Unit``\ 型を返すメソッドは，このような場合のためのシンタックスシュガーを使って宣言するべきです。 ::
    
    def printName() {
      println("Novell")
    }
    
.. This compiles into::
これは次のようにコンパイルされます。 ::
    
    def printName(): Unit = {
      println("Novell")
    }
    
.. You should prefer the former style (without the annotation or the equals sign)
   as it reduces errors and improves readability.  For the record, it is also
   possible (and encouraged!) to declare abstract methods returning ``Unit`` with an
   analogous syntax::
エラーを減らし，可読性を高めるため，前者のスタイル（アノテーションまたは等号の無い）を使うべきです。\
正確を期すため言っておくと，\ ``Unit``\ 型を返す抽象メソッドも次のように同様のシンタックスで\
宣言することができます（するべきです！）。 ::
    
    def printName()         // abstract def for printName(): Unit
    
