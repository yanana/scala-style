Accessors/Mutators
~~~~~~~~~~~~~~~~~~

Scala does *not* follow the Java convention of prepending ``set``/``get`` to
mutator and accessor methods (respectively).  Instead, the following conventions
are used:

* For accessors of *most* boolean and non-boolean properties, the name of the
  method should be the name of the property
* For accessors of *some* boolean properties, the name of the method may be the
  capitalized name of the property with "``is``" prepended (e.g. ``isEmpty``).
  This should only be the case when no corresponding mutator is provided.  Please
  note that the Lift_ convention of appending "``_?``" to boolean accessors is
  non-standard and not used outside of the Lift framework.
* For mutators, the name of the method should be the name of the property with
  "``_=``" appended.  As long as a corresponding accessor with that particular
  property name is defined on the enclosing type, this convention will enable
  a call-site mutation syntax which mirrors assignment.

::
    
    class Foo {
    
      def bar = ...
      
      def bar_=(bar: Bar) {
        ...
      }
      
      def isBaz = ...
    }
    
    val foo = new Foo
    foo.bar             // accessor
    foo.bar = bar2      // mutator
    foo.isBaz           // boolean property

Quite unfortunately, these conventions fall afoul of the Java convention to name
the private fields encapsulated by accessors and mutators according to the
property they represent.  For example::
    
    public class Company {
        private String name;
        
        public String getName() {
            return name;
        }
        
        public void setName(String name) {
            this.name = name;
        }
    }
    
If we were to attempt to adopt this convention within Scala while observing the
accessor naming conventions given above, the Scala compiler would complain about
a naming collision between the ``name`` field and the ``name`` method.  There are
a number of ways to avoid this problem and the community has yet to standardize
on any one of them.  The following illustrates one of the less error-prone
conventions::
    
    class Company {
      private val _name: String = _
      
      def name = _name
      
      def name_=(name: String) {
        _name = name
      }
    }
    
While Hungarian notation is terribly ugly, it does have the advantage of
disambiguating the ``_name`` field without cluttering the identifier.  The
underscore is in the prefix position rather than the suffix to avoid any danger
of mistakenly typing ``name _`` instead of ``name_``.  With heavy use of Scala's
type inference, such a mistake could potentially lead to a very confusing error.

Note that fields may actually be used in a number of situations where accessors
and mutators would be required in languages like Java.  Always prefer fields over
methods when given the choice.

.. _Lift: http://liftweb.com

