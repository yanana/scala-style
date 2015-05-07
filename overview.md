概要
====

相互運用性の容易性を確保するため，一般にScalaはJavaの規約を真似ています。
特定の概念におけるイディオムがある場合には，規約とイディオムを次の言語から採用しています（この順番で）。

-   Java
-   [Standard ML](http://en.wikipedia.org/wiki/Standard_ML)
-   Haskell
-   C\#
-   OCaml
-   Ruby
-   Python

例えば，クラスやメソッドの命名では，SMLの型注釈やHaskellの型パラメータ（大文字では無く小文字を使う），
またRubyの非ブーリアン値へのアクセサメソッドの命名規約では無く，Javaの規約に従うべきです。
Scalaは正にハイブリッド言語と言えるでしょう！
