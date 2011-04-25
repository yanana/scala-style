.. Declarations
宣言
============

.. Classes
クラス
-------

.. Class/Object/Trait constructors should be declared all on one line, unless
   the line becomes "too long" (about 100 characters).  In that case, put each 
   constructor argument on its own line, indented **four** spaces::
クラス・オブジェクト・トレイトのコンストラクタは，行が「長すぎ」なければ（およそ100文字程度），1行で宣言するべきです。\
行が長くなってしまう場合には，各コンストラクタ引数を行毎に配置して，スペース\ **4つ**\ でインデントします。 ::

    class Person(name: String, age: Int) {
    }

    class Person(
        name: String,
        age: Int,
        birthdate: Date,
        astrologicalSign: String,
        shoeSize: Int,
        favoriteColor: java.awt.Color) {
      def firstMethod = ...
    }

.. If a class/object/trait extends anything, the same general rule applies, put
   it one one line unless it goes over about 100 characters, and then indent **four**
   spaces with each item being on its own line and **two** spaces for
   extensions; this provides visual separation between constructor arguments and extensions.::
クラス・オブジェクト・トレイトが何らか継承をしている場合，同様の規則があてはまります。100文字を越えなければ1行で宣言し，\
越える場合にはスペース\ **4つ**\ で各引数をインデントし，継承している対象をスペース\ **2つ**\ でインデントします。\
こうするとコンストラクタ引数と継承の違いが見た目で区別がつきます。 ::

    class Person(
        name: String,
        age: Int,
        birthdate: Date,
        astrologicalSign: String,
        shoeSize: Int,
        favoriteColor: java.awt.Color) 
      extends Entity
      with Logging
      with Identifiable
      with Serializable {
    }


.. toctree::

   ordering
   methods
   fields


.. Function Values
関数値
---------------

.. Scala provides a number of different syntactic options for declaring function
   values.  For example, the following declarations are exactly equivalent:
関数値を宣言するための様々なオプションをScalaは提供しています。例えば，次の宣言は全く同じものです。 ::

1. ``val f1 = { (a: Int, b: Int) => a + b }``
2. ``val f2 = (a: Int, b: Int) => a + b``
3. ``val f3 = (_: Int) + (_: Int)``
4. ``val f4: (Int, Int) => Int = { _ + _ }``

.. Of these styles, (1) and (4) are to be preferred at all times.  (2) appears shorter
   in this example, but whenever the function value spans multiple lines (as is
   normally the case), this syntax becomes extremely unwieldy.  Similarly, (3) is
   concise, but obtuse.  It is difficult for the untrained eye to decipher the fact
   that this is even producing a function value.
この内，1.と4.を常に使うべきです。2.はこの例では短く簡潔に見えますが，複数行にわたる場合（よく起こる）には非常に\
判り辛くなります。同様に，3.も簡潔に書けますが，見慣れない人にとっては関数値を作っているということが判読し難いです。

.. When styles (1) and (4) are used exclusively, it becomes very easy to distinguish
   places in the source code where function values are used.  Both styles make use
   of curly braces (``{}``), allowing those characters to be a visual cue that a
   function value may be involved at some level.
1.と4.のスタイルだけを使えば，関数値が使われている場所を特定するのが極めて容易になります。どちらのスタイルにおいても\
波括弧（\ ``{}``\ ）を活用して，関数値がある事に気が付くための視覚的な手がかりとなります。

.. toctree::

   function_values/spacing
   function_values/multi_expression_functions
