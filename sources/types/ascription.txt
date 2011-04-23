.. Ascription
みなし型
----------

.. Type ascription is often confused with type annotation, as the syntax in Scala
   is identical.  The following are examples of ascription:
Scalaではその文法が同じため，みなし型は型注釈とよく混同されます。次にみなし型の例を挙げます。

* ``Nil: List[String]``
* ``Set(values: _*)``
* ``"Daniel": AnyRef``

.. Ascription is basically just an up-cast performed at compile-time for the sake of
   the type checker.  Its use is not common, but it does happen on occasion.  The
   most often seen case of ascription is invoking a varargs method with a single
   ``Seq`` parameter.  This is done by ascribing the ``_*`` type (as in the second
   example above).

みなしは，型チェックのためにコンパイル時に行われる単なるアップキャストと言えます。よく利用される訳ではありませんが，場合によっては必要に迫られます。最もよく起こるケースが，可変長引数のメソッドを一つの ``Seq`` パラメータで呼び出す時です。これは上記の二番目の例の様に， ``_*`` 型を配置することで可能になります。

.. Ascription follows the type annotation conventions; a space follows the colon.
みなしは型注釈のコロンの後ろにスペースを置くという規約に従います。
