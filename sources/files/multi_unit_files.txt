.. Multi-Unit Files
複数のコンパイル単位を含むファイル
----------------

.. Despite what was said above, there are some important situations which warrant the
   inclusion of multiple compilation units within a single file.  One common example
   is that of a sealed trait and several sub-classes (often emulating the ADT
   language feature available in functional languages)::
，1つのファイルに複数のコンパイル単位を含めるべき重要なシチュエーションがあります。\
よくある例として，シールドトレイトとそのサブクラス（関数型言語で利用可能な代数的データ構造を模してよく使われます）\
があります。 ::
    
    sealed trait Option[+A]
    
    case class Some[A](a: A) extends Option[A]
    
    case object None extends Option[Nothing]
    
.. Because of the nature of sealed superclasses (and traits), all subtypes *must*
   be included in the same file.  Thus, such a situation definitely qualifies as
   an instance where the preference for single-unit files should be ignored.
シールドクラス（またはトレイト）の性質から，そのサブクラスは総じて同じファイルで定義\ **されなければなりません**\ 。\
したがって，こういった状況ではコンパイル単位をファイルの単位にするという嗜好は無視されます。

.. Another case is when multiple classes logically form a single, cohesive group,
   sharing concepts to the point where maintenance is greatly served by containing
   them within a single file.  These situations are harder to predict than the
   aforementioned sealed supertype exception.  Generally speaking, if it is *easier*
   to perform long-term maintenance and development on several units in a single
   file rather than spread across multiple, then such an organizational strategy
   should be preferred for these classes.  However, keep in mind that when multiple
   units are contained within a single file, it is often more difficult to find
   specific units when it comes time to make changes.
また別のケースとして，複数のクラスが概念を共有して，1つの論理的なグループを形成しており，\
同じファイルにまとまっていれば劇的に保守性が向上する場合があります。\
これは前述のシールドクラスの場合に比べて，予測し難いものです。\
一般に，ファイルを分割するよりも同じファイルに含める方が長期の保守と開発が容易になる場合は，\
そうした方がいい結果になります。しかし，複数のコンパイル単位が同じファイルに含まれる場合，\
変更を行おうとしたときに特定のコンパイル単位を見つけ出すのが難しくなると言うことも覚えておいてください。

.. **All multi-unit files should be given camelCase names with a lower-case first letter.**
   This is a very important convention.  It differentiates multi- from single-unit
   files, greatly easing the process of finding declarations.  These filenames may
   be based upon a significant type which they contain (e.g. ``option.scala`` for
   the example above), or may be descriptive of the logical property shared by all
   units within (e.g. ``ast.scala``).
**複数のコンパイル単位を含むファイル名は全て，小文字始まりのキャメルケースとするべきです。**\
これは非常に重要な規則です。こうすることによって，複数コンパイル単位を含むファイルを区別し，宣言を容易に探し出せる様になります。\
このファイル名は，その中にある特定のクラスに基づいて（e.g. 上記の例で言えば，\ ``option.scala``\ ）命名しても，\
またその中にあるクラスが共有する論理的性質を説明するような名前（e.g. ``ast.scala``\ ）にしても構いません。


