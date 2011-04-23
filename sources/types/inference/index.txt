.. Inference
型推論
---------

.. Use type inference as much as possible.  You should almost never annotate the type
   of a ``val`` field as their type will be immediately evident in their value::
可能な限り型推論は利用するべきです。\ ``val``\ フィールドの型はその値によって明白なため，型注釈を付けないようにしてください。 ::
    
    val name = "Daniel"
    
.. However, type inference has a way of coming back to haunt you when used on
   non-trivial methods which are part of the public interface.  Just for the sake
   of safety, you should annotate all public methods in your class.
しかし，パブリックインターフェースの一端をなすメソッドの型が自明でない場合，型推論は困った結果を引き起こす事もあります。\
安全性を考慮して，自分のクラスのパブリックメソッドには総じて型注釈をつけるべきです。

.. toctree::

   function_values
   void_methods
