Scaladoc
========

It is important to provide documentation for all packages, classes, traits, and methods and other members.  
Scaladoc generally follows the conventions of Javadoc, however there are many additional features to make
writing scaladoc simpler.

The general format for a scaladoc comment should be as follows::

    /**
     * This is a brief description of what's being documented.
     *
     * This is further documentation of what we're documenting.  It should
     * provide more details as to how this works and what it does.
     */
    def myMethods = {}

For methods and other type members where the only documentation needed is a simple, short description, 
this format can be used::

    /** Does something very simple */
    def simple = {}

General Style
-------------

It is important to maintain a consistent style with scaladoc.  It is also important to target scaladoc
to both those unfamiliar with your code and experienced users who just need a quick reference. Here
are some general guidelines:

* Get to the point as quickly as possible, for example, says "returns true if some condition" instead of "if some condition return true"
* Try to format the first sentence of a method as "Returns XXX", as in "Returns the first object of the List", as opposed to "this method returns" or "get the first" etc.  Methods typically **return** things
* This same goes for classes; omit "This class does XXX"; just say "Does XXX"
* Always create links to mentioned Scala classes always using the square-bracket syntax, e.g. ``[[scala.Option]]``
* If the documentation of a method is a one line description of what that method returns, do not repeat it with an @return annotation.
* If the documentation of a method is longer than one sentence, summarize it's return value in an @return, even if it seems superfluous to do so.
* Document what the method *does do* not what the method *should do*.  In other words, say "returns the result of applying f to x" rather than "return the result of applying f to x".  Subtle, but important.
* When referring to the instance of the class, use "this XXX", or "this" and not "the XXX".  For objects, say "this object".
* Make code examples consistent with this guide.
* Use the wiki-style syntax instead of HTML wherever possible.

Packages
--------

Provide scaladoc for each package.  This goes in ``package.scala`` in your package's directory and looks like so 
for the package ``parent.package.name.mypackage``::

    package parent.package.name

    /**
     * This is the scaladoc for the package.
     */
    package object mypackage {
    }

A package's documentation should first document what sorts of classes are part of the package.  Secondly, document
the general sorts of things the package object itself provides. 

While package documentation doesn't need to be a full-blown tutorial on using the classes in the package, it should
provide an overview of the major classes, with some basic examples of how to use the classes in that package.  Be
sure to reference classes using the square-bracket notation::

    package my.package
    /**
     * Provides classes for dealing with complex numbers.  Also provides implicits for
     * converting to and from `Int`.
     *
     * ==Overview==
     * The main class to use is [[my.package.complex.Complex]], as so
     * {{{
     * scala> val complex = Complex(4,3)
     * complex: my.package.complex.Complex = 4 + 3i
     * }}}
     *
     * If you include [[my.package.complex.ComplexConversions]], you can 
     * convert numbers more directly
     * {{{
     * scala> import my.package.complex.ComplexConversions._
     * scala> val complex = 4 + 3.i
     * complex: my.package.complex.Complex = 4 + 3i
     * }}}
     */
     package complex {}

Classes, Objects, and Traits
----------------------------

Document all classes, objects, and traits.  The first sentence of the scaladoc should provide a summary of what
the class or trait does.  Document all type parameters with ``@tparam``.


Classes
~~~~~~~

If a class should be created using it's companion object, indicate as such after the description of the class 
(though provide details of construction in the companion object).  Unfortunately, there is no way to create
a link to the companion object, however the generated scaladoc will create a link for you.

If the class should be created using a constructor, document it using the ``@constructor`` syntax::

    /**
     * A person who uses our application.
     *
     * @constructor create a new person with a name and age.
     * @param name the person's name
     * @param age the person's age in years
     */
	class Person(name:String, age:Int) {
    }

Depending on the complexity of your class, provide an example of common usage.  

Objects
~~~~~~~

Since objects can be used for a variety of purposes, it is important to document how to use each object.
If this object is a factory for other objects, indicate as such here, deferring the specifics to
the scaladoc for the ``apply`` method(s).  If your object *doesn't* use ``apply`` as a factory
method, be sure to indicate the actual method names.

Traits
~~~~~~

After the overview of what the trait does, provide an overview of the methods and types that must be
specified in classes that mix in the trait.  If there are known classes using the trait, reference them.

