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
      def firstMethod = ...
    }

If a class/object/trait extends anything, the same general rule applies, put
it one one line unless it goes over about 100 characters, and then indent **four**
spaces with each item being on its own line and **two** spaces for
extensions; this provides visual separation between constructor arguments and extensions.::

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


Function Values
---------------

Scala provides a number of different syntactic options for declaring function
values.  For example, the following declarations are exactly equivalent:

1. ``val f1 = { (a: Int, b: Int) => a + b }``
2. ``val f2 = (a: Int, b: Int) => a + b``
3. ``val f3 = (_: Int) + (_: Int)``
4. ``val f4: (Int, Int) => Int = { _ + _ }``

Of these styles, (1) and (4) are to be preferred at all times.  (2) appears shorter
in this example, but whenever the function value spans multiple lines (as is
normally the case), this syntax becomes extremely unweildy.  Similarly, (3) is
concise, but obtuse.  It is difficult for the untrained eye to decipher the fact
that this is even producing a function value.

When styles (1) and (4) are used exclusively, it becomes very easy to distinguish
places in the source code where function values are used.  Both styles make use
of curly braces (``{}``), allowing those characters to be a visual cue that a
function value may be involved at some level.

.. toctree::

   function_values/spacing
   function_values/multi_expression_functions
