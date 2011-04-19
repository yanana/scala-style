.. Overview
概要
========

.. Generally speaking, Scala seeks to mimic Java conventions to ease interoperability.
   When in doubt regarding the idiomatic way to express a particular concept, adopt
   conventions and idioms from the following languages (in this order):
相互運用性の容易性を確保するため，一般にScalaはJavaの規約を真似ています。特定の概念におけるイディオムがある場合には，規約とイディオムを次の言語から採用しています（この順番で）。


* Java
* `Standard ML`_
* Haskell
* C#
* OCaml
* Ruby
* Python

例えば，クラスやメソッドの命名では，SMLの型注釈やHaskellの型パラメータ（大文字では無く小文字を使う），またRubyの非ブーリアン値へのアクセサメソッドの命名規約では無く，Javaの規約に従うべきです。Scalaは正にハイブリッド言語と言えるでしょう!


.. For example, you should use Java's naming conventions for classes and methods,
   but SML's conventions for type annotation, Haskell's conventions for type
   parameter naming (except upper-case rather than lower) and Ruby's conventions for
   non-boolean accessor methods.  Scala really is a hybrid language!

.. _Standard ML: http://en.wikipedia.org/wiki/Standard_ML

