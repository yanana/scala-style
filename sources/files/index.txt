.. Files
ファイル
=====

.. As a rule, files should contain a *single* logical compilation unit.  By "logical"
   I mean a class, trait or object.  One exception to this guideline is for classes
   or traits which have companion objects.  Companion objects should be grouped
   with their corresponding class or trait in the same file.  These files should
   be named according to the class, trait or object they contain::
原則，1つのファイルには単一の論理的なコンパイル単位を含むべきです。\
「論理的」な単位とは，クラス，トレイト，またはオブジェクトを意味します。\
唯一の例外は，コンパニオンオブジェクトを持つクラスまたはトレイトです。\
コンパニオンオブジェクトは，対応するクラスまたはトレイトと同じファイルに含むべきです。\
ファイル名は，そのファイルに含まれるクラス，トレイト，またはオブジェクトに基づいて命名します。 ::
    
    package com.novell.coolness
    
    class Inbox { ... }
    
    // コンパニオンオブジェクト
    object Inbox { ... }
    
.. These compilation units should be placed within a file named ``Inbox.scala``
   within the ``com/novell/coolness`` directory.  In short, the Java file naming
   and positioning conventions should be preferred, despite the fact that Scala
   allows for greater flexibility in this regard.
このコンパイル単位は，\ ``com/novell/coolness``\ ディレクトリの\ ``Inbox.scala``\ というファイルに\
あるべきです。つまり，Scalaの柔軟な命名・配置規則にかかわらず，Javaにおけるファイルの命名規則と配置規則を\
守るべきだということです。

.. toctree::

   multi_unit_files
