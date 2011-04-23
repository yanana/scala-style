.. Parentheses
括弧
~~~~~~~~~~~

.. Unlike Ruby, Scala attaches significance to whether or not a method is *declared*
   with parentheses (only applicable to methods of arity_-0).  For example::
Rubyとは違い，Scalaはメソッドが括弧を伴って\ **宣言されている**\ かどうか（引数が無いメソッドにのみ該当します）\
に意味を持たせています。例えば， ::
    
    def foo1() = ...
    
    def foo2 = ...
    
.. These are different methods at compile-time.  While ``foo1`` can be 
   called with or without the parentheses, ``foo2`` *may not* be called
   *with* parentheses.
これらはコンパイル時に事なるメソッドとして解釈されます。\ ``foo1``\ は括弧があろうと無かろうと呼び出す事ができますが，\
``foo2``\ は括弧\ **あり**\ では呼び出す事が\ **できません**\ 。

.. Thus, it is actually quite important that proper guidelines be observed regarding
   when it is appropriate to declare a method without parentheses and when it is
   not.
従って，メソッド宣言をいつ括弧ありでするべきか，またいつ括弧無しでするべきかについてのガイドラインに従う事が非常に重要です。

.. Methods which act as accessors of any sort (either encapsulating a field or a
   logical property) should be declared *without* parentheses except if they have side effects.
   While Ruby and Lift use a ``!`` to indicate this, the usage of parens is preferred [#dsl_note]_.  
アクセッサ（フィールドでも，論理プロパティでも）として働くメソッドは，副作用がある場合を除いて括弧\ **なし**\ で宣言するべきです。\
RubyとLiftは\ ``!``\ を使って副作用があることを示しますが，括弧の使用の方が好ましいです\ [#dsl_note]_\ 。

.. Further, the callsite should follow the declaration; if declared with parentheses,
   call with parentheses.  While there is temptation to save a few characters,
   if you follow this guideline, your code will be *much* more readable and 
   maintainable.
さらには，呼び出し側は宣言に従うべきです。つまり，括弧付きで定義されていれば括弧付きで呼び出すということです。\
わずかな文字数であっても節約したくなる誘惑にかられるかもしれませんが，このガイドラインに従えばコードは\ **とても**\ 読みやすく，\
メンテナンスしやすくなります。

::

  // 状態は変えません。birthdateの形で呼びます。
  def birthdate = firstName

  // 内部状態を更新します。age()の形で呼びます。
  def age() = {
    _age = updateAge(birthdate)
    _age
  }

.. _arity: http://en.wikipedia.org/wiki/Arity

.. rubric:: 脚注

.. .. [#dsl_note] Please note that fluid APIs and internal domain-specific languages have a
               tendency to break the guidelines given below for the sake of syntax.  Such
               exceptions should not be considered a violation so much as a time when these
               rules do not apply.  In a DSL, syntax should be paramount over convention.
.. [#dsl_note] 流れるようなAPIと内部DSLには，構文のため以下で提供するガイドラインを破る傾向があります。\
               このような例外は規約違反として考えるべきではありません。\
               DSLでは，構文が最も重要であり，規約に優先します。
