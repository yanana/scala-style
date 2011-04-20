.. Type Parameters (generics)
型パラメータ（ジェネリクス）
--------------------------

Type parameters are typically a single upper-case letter (from the English
alphabet).  Conventionally, parameters blindly start at ``A`` and ascend up to
``Z`` as necessary.  This contrasts with the Java convention of using ``T``, ``K``,
``V`` and ``E``.  For example::
型パラメータは，通常大文字1文字（英語のアルファベット）で書きます。\
慣例として，\ ``A``\ から始まり必要に応じて\ ``Z``\ まで順に使っていきます。\
\ ``T``\ ，\ ``K``\ ，\ ``V``\ ，\ ``K``\ などを使うJavaとは対照的です。例えば次の様に書きます。 ::
    
    class List[A] {
      def map[B](f: A => B): List[B] = ...
    }

.. toctree::

   higher_kinds
