Multiple Parameter Lists
~~~~~~~~~~~~~~~~~~~~~~~~

In general, you should only use multiple parameter lists if there is a good reason to do so.
These methods (or similarly declared functions) have a more verbose declaration and invocation syntax and are
harder for less-experienced Scala developers to understand.  

There are three main reasons you should do this:

#. For a fluent API
   
   Multiple parameter lists allow you to create your own "control structures"::

    def unless(exp:Boolean)(code: => Unit) = if (!exp) code
    unless(x < 5) { 
      println("x was not less than five")
    }

#. Implicit Parameters

   When using implicit parameters, and you use the ``implicit`` keyword, it applies to the entire parameter list.
   Thus, if you want only some parameters to be impicit, you must use multiple parameter lists.

#. For type inference

   When invoking a method using only some of the parameter lists, the type inferencer can 
   allow a simpler syntax when invoking the remaining parameter lists.  Consider fold::

    def foldLeft[B](z:B)(op: (A,B) => B):B
    List("").foldLeft(0)(_ + _.length)

    // If, instead:
    def foldLeft[B](z: B, op: (B, A) => B): B
    // above won't work, you must specify types
    List("").foldLeft(0, (b: Int, a: String) => a + b.length)
    List("").foldLeft[Int](0, _ + _.length)

For complex DSLs, or with type-names that are long, it can be difficult to fit the entire signature on one line.  In those cases,
alight the open-paren of the parameter lists, one list per line (i.e. if you can't put them all on one line, put one each per
line)::


    protected def forResource(resourceInfo:Any)
                             (f: (JsonNode) => Any)
                             (implicit urlCreator: URLCreator, configurer: OAuthConfiguration) = {
     

