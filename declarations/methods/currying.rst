Multiple Parameter Lists
~~~~~~~~~~~~~~~~~~~~~~~~

In general, you should only use multiple parameter lists if there is a good reason to do so.
These methods (or similarly declared functions) have a more verbose declaration and invocation syntax and are
harder for less-experienced Scala developers to understand.  

There are two main reasons you should do this:

#. For a fluent API
   
   Multiple parameter lists allow you to create your own "control structures"::

    def unless(exp:Boolean)(code: => Unit) = if (!exp) code
    unless(x < 5) { 
      println("x was not less than five")
    }

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

