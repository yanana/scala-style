Packages
--------

Scala packages should follow the Java package naming conventions::

    // wrong!
    package coolness
    
    // right!
    package com.novell.coolness

    // right, for package object com.novell.coolness
    package com.novell
    /**
     * Provides classes related to coolness
     */
    package object coolness {
    }
    
    

Versions Prior to 2.8
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Scala 2.8 changes how packages worked.  For 2.7 and earlier, 
please note that this convention does occasionally lead to problems when combined
with Scala's nested packages feature.  For example::
    
    import net.liftweb._
    
This import will actually fail to resolve in some contexts as the ``net`` package
may refer to the ``java.net`` package (or similar).  To compensate for this, it
is often necessary to fully-qualify imports using the ``_root_`` directive,
overriding any nested package resolves::
    
    import _root_.net.liftweb._
    
Do not overuse this directive.  In general, nested package resolves are a good
thing and very helpful in reducing import clutter.  Using ``_root_`` not only
negates their benefit, but also introduces extra clutter in and of itself.

