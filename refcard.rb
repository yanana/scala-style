#!/usr/bin/ruby

require 'rubygems'
require 'prawn'
require 'prawn/measurement_extensions'

def body(doc)
  doc.font("./Georgia.ttf")
  doc.font_size(10)
end

def code(doc)
  doc.font("./VeraMono.ttf")
  doc.font_size(8)
end

def head(doc)
  doc.font("./Georgia.ttf")
  doc.font_size(20)
end

def sub(doc)
  doc.font("./Georgia.ttf")
  doc.font_size(14)
end
doc = Prawn::Document.new(:page_layout => :landscape,
                          :page_size => "LETTER",
                          :left_margin => 0.5.in,
                          :right_margin => 0.5.in,
                          :bottom_margin => 0.5.in,
                          :top_margin => 0.5.in)

doc.bounding_box([0,7.5.in], :width => 10.in, :height => 24) do
  head(doc)
  doc.text("Scala Style Reference Card", :align => :center)
end
doc.column_box([0,7.5.in - 24], :width => 10.in, :height => 7.5.in - 24, :columns => 3) do
  sub(doc)
  doc.text("Indenting & Spacing")
  code(doc)
  doc.text <<EOS

// indent 2 characters
def doit { // K&R style bracing
  callSomeCode()
  // must have trailing operators 
  // when wrapping
  val x = 4 + 5 + 8 + 4 + 
    3 + 6 + 5 + 9

  // 2 space indent when wrapping
  myVeryLongMethodCall(
    takes,
    lotsOf,
    arguments)

}

// spacing for readability is...
def important(f: (Boolean, Any) => Int)

EOS
  sub(doc)
  doc.text("Braces & Parens")
  code(doc)
  doc.text <<EOS

if (noElse) {
  // use braces
}

if (haveAnElse) 
  // braces not imporant
else
  // unless the blocks are multi-line

val result = if (veryShort) "one" else "line"

foo match { 
  case "one liner" => "no need for braces"
  case "more complex" => {
    "consider"
    "using braces"
  }
}

// keep parens with code, LISP-style
val y = (4 + foo + 6 +
  bar(x) + 17)

// no parens for Arity-1
def method(f: Int => Float)

// parens for anything else
def method(f: (Int,Double) => Float)

EOS
  sub(doc)
  doc.text("Naming")
  code(doc)
  doc.text <<EOS

package com.follow.java.conventions

class UseCamelCase {
  type TypesLookLikeClasses = String[List]
  def methodsLikeInJava = "foo"
  // this creates accessor and mutator
  var dontUseGetAndSet
}

trait AlsoUseCamelCase

object CamelCase 

// if mimicing a package, use lowercase
object mimic 

// start with "A"
class Parameterized[A,B,C]

// Spell it out in all caps if
// it makes sense
class EasierParameterized[KEY,VALUE]

// @annotations @are @lowercased
class cloneable extends StaticAnnotation

// one-liners can use short names
def add(a:Int, b:Int) = a + b

def !@#%^ = "avoid operators"

EOS
  sub(doc)
  doc.text("Declarations")
  code(doc)
  doc.text <<EOS

class Declarations {

  // use type inference where possible
  var fieldsGo = "together"
  val without = "newlines"
  // can't infer here...
  var spaceAfterColon: Boolean = _

  // explicit return type
  def methodsHaveBlank:String = "lines"

  private def betweenThem = "for clarity"

  // order modifiers like so
  @annotations
  override protected final def foo() = ""

EOS

  sub(doc)
  doc.text("Declarations (con't)")
  code(doc)
  doc.text <<EOS

  def curriedMethod(a: Int)(b: Int) = 
    "looks like this"
}
// braces make it clear for most functions
val func = { (a:Int, b:Int) => a + b }

// unless really really short
val tight = (Int,Int) => _ + _

// Let Scala infer str's type
someList map { str => str.toInt }

// short duck types on one line
def duck(a: { def close():Unit })

// for longer, make a type alias
private type Closeable = {
  def open(r:Resource)
  def close:Resource
}
def duck(a: Closeable)

class WorstCase(
  for:Long
  class:Declaration
  is:ToWrap)
    extends Sensible
    with FourSpaces
    with Judgement {
}

// handy for call-site
def higherOrder(a:Int)(curryLast: Int => Int)

EOS
  sub(doc)
  doc.text("General")
  code(doc)
  doc.text <<EOS

for {
  x <- comprehension
  y <- style
} yield "use braces" + x/y

for (x <- loop, y <- style) {
  println("use parens")
}

// calling Arity-0 methods
sideEffects() // have parens
pureFunction

seq toList // BLANK LINE AFTER

EOS

doc.bounding_box([0,7.5.in], :width => 10.in, :height => 24) do
  head(doc)
  doc.text("Scala Style Reference Card", :align => :center)
end

  sub(doc)
  doc.text("General (con't)")
  code(doc)
  doc.text <<EOS

// only omit '.' on last call
seq.toList map { _.toUpperCase }

// infix notation for pure functions
names mkString ","

// not for side-effects!
javaList add "item"

// acceptable and idiomatic
xs map { _.toString } filter { _.length > 5 }

// sybolic operators always infix
val all = some ++ others

EOS

  sub(doc)
  doc.text("Files")
  code(doc)
  doc.text <<EOS

Inbox.scala:

  // one class per file
  class Inbox { ... }

  // companion objects are included
  object Inbox { ... }

// lowercase multi-units
multiUnit.scala:

  // All types should be in same file
  sealed trait Shape

  case class Circle extends Shape
  case class Square extends Shape


















EOS

  sub(doc)
  doc.text("Controversial")
  code(doc)
  doc.text <<EOS

// has side effects
def foo1() = "always call me with parens"
// DOESN'T have side effects
def foo2 = "never call me with parens"

// how to declare a Unit method?
def someDay {
  "explicitly avoiding '='"
}

def othersInsist:Unit = {
  "consistent with other"
  "declarations"
}

// avoid right-associatives
(0/:numbers)(_+_) 

EOS
  sub(doc)
  doc.text("More Info")
  code(doc)
  doc.text <<EOS

http://www.scala-lang.org

http://davetron5000.github.com/scala-style
EOS
end
doc.render_file("refcard.pdf")
