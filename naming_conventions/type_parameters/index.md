型パラメータ（ジェネリクス）
============================

型パラメータは，通常大文字1文字（英語のアルファベット）で書きます。
慣例として，`A`から始まり必要に応じて`Z`まで順に使っていきます。
`T`，`K`，`V`，`K`などを使うJavaとは対照的です。例えば次の様に書きます。
:

    class List[A] {
      def map[B](f: A => B): List[B] = ...
    }