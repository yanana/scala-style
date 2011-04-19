.. Indentation
インデント
===========

.. Indentation should follow the "2-space convention".  Thus, instead of indenting
   like this::
インテントは「2スペース規約」に従うべきです。したがって，次の様にするのでは無く， ::
    
    // 誤り!
    class Foo {
        def bar = ...
    }
    
.. You should indent like this::
次の様にインデントするべきです。 ::
    
    // 正しい!
    class Foo {
      def bar = ..
    }
    
.. The Scala language encourages a startling amount of nested scopes and logical
   blocks (function values and such).  Do yourself a favor and don't penalize yourself
   syntactically for opening up a new block.  Coming from Java, this style does take
   a bit of getting used to, but it is well worth the effort.
Scalaではネストしたスコープと論理ブロックが驚くほど多用されます（関数値など）。積極的に新しいブロックを作ってください。Java出身の方にはこのスタイルにはあまりなじみがないかもしれませんが，非常に有用です。

.. toctree::

   line_wrapping
   methods_with_numerous_arguments
