.. Operators
演算子
~~~~~~~~~

.. Avoid!  Despite the degree to which Scala facilitates this area of API design,
   operator definition should not be undertaken lightly, particularly when the
   operator itself is non-standard (for example, ``>>#>>``).  As a general rule,
   operators have two valid use-cases:
使わないように！Scalaが演算子を用いたAPI設計をどの程度サポートしているかは別にして，演算子の定義\
は軽々しく手を出すべきではありません。その演算子が一般的では無い場合（例えば，\ ``>>#>>``\ ）は特にそうです。
一般的なルールとして，演算子には2つの適切なユースケースがあります。

.. * Domain-specific languages (e.g. ``actor1 ! Msg``)
   * Logically mathematical operations (e.g. ``a + b`` or ``c :: d``)
* ドメイン特化言語（e.g. ``actor1 ! Msg``\ ）
* 論理的，数学的な演算（e.g. ``a + b``\ や\ ``c :: d``\ ）

.. In the former case, operators may be used with impunity so long as the syntax is
   actually beneficial.  However, in the course of standard API design, operators
   should be strictly reserved for purely-functional operations.  Thus, it is
   acceptable to define a ``>>=`` operator for joining two monads, but it is not
   acceptable to define a ``<<`` operator for writing to an output stream.  The
   former is mathematically well-defined and side-effect free, while the latter is
   neither of these.
前者のケースでは，構文が本当に有益な限りは演算子を使用しても構いません。\
しかしながら，通常のAPI設計の間は，演算子は純粋函数的な演算に限定して取っておくべきです。\
従って，\ ``>>=``\ 演算子を2つのモナドを合成する目的で定義する事は構いませんが，\ ``<<``\ 演算子をアウトプットストリームに\
書き出す用途で定義する事は認められません。\
前者は数学的に明確に定義されていて副作用がありませんが，後者はそのどちらにもあてはまりません。

.. Operator definition should be considered an advanced feature in Scala, to be used
   only by those most well-versed in its pitfalls.  Without care, excessive operator
   overloading can easily transform even the simplest code into symbolic soup.
Scalaでは演算子の定義はその危険性を良く理解した上級者のみが使うような高等な機能として考えられています。\
注意しないと，過度の演算子オーバーロードは単純極まりないコードをも記号の嵐にしてしまいます。

