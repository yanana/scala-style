"Void"メソッド
==============

`Unit`型を返すメソッドは，「全てをパブリックとする」ルールの例外です。**全ての**`Unit`型を返すメソッドは，
このような場合のためのシンタックスシュガーを使って宣言するべきです。 :

    def printName() {
      println("Novell")
    }

これは次のようにコンパイルされます。 :

    def printName(): Unit = {
      println("Novell")
    }

エラーを減らし，可読性を高めるため，前者のスタイル（型注釈，等号の無い）を使うべきです。
正確を期すため言っておくと，`Unit`型を返す抽象メソッドも次のように同様のシンタックスで
宣言することができます。否，するべきです！ :

    def printName()         // abstract def for printName(): Unit