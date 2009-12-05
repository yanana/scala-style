Declarations
============

Classes
-------

Class/Object/Trait constructors should be declared all on one line, unless
the line becomes "too long" (about 100 characters).  In that case, put each 
constructor argument on its own line, indented **four** spaces::

    class Person(name: String, age: Int) {
    }

    class Person(
      name: String,
      age: Int,
      birthdate: Date,
      astrologicalSign: String,
      shoeSize: Int,
      favoriteColor: java.awt.Color) {
    }

If a class/object/trait extends anything, the same general rule applies, put
it one one line unless it goes over about 100 characters, and then indent **two**
spaces with each item being on its own line; this provides visual separation
between constructor arguments and extensions.::

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

Ordering Of Class Elements
~~~~~~~~~~~~~~~~~~~~~~~~~~

All class/object/trait members should be declared interleaved with newlines.
The only exceptions to this rule are ``var`` and ``val``.  These may be declared
without the intervening newline, but only if none of the fields hava scaladoc
and if all of the fields have simple (max of 20-ish chars, one line) definitions::
    
    class Foo {
      val bar = 42
      val baz = "Daniel"
      
      def doSomething() { ... }
      
      def add(x: Int, y: Int) = x + y
    }
    
Fields should *precede* methods in a scope.  The only exception is if the ``val``
has a block definition (more than one expression) and performs opertions which
may be deemed "method-like" (e.g. computing the length of a ``List``).  In such
cases, the non-trivial ``val`` may be declared at a later point in the file as
logical member ordering would dictate.  This rule *only* applies to ``val`` and
``lazy val``!  It becomes very difficult to track changing aliases if ``var``
declarations are strewn throughout class file.

.. toctree::

   methods/index
   fields
   function_values/index
