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
  doc.text("Indenting")
  code(doc)
  doc.text <<EOS

// indent 2 characters
def doit { // K&R style bracing
  callSomeCode()
  // must have trailing operators 
  // when wrapping
  val x = 4 + 5 + 8 + 4 + 
    3 + 6 + 5 + 9

  // if you can't fit the args
  // on one line, indent 2 spaces
  myVeryLongMethodCall(
    takes,
    aLot,
    OF,
    arguments,
    "right")
}

EOS
  sub(doc)
  doc.text("Braces")
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

EOS
  sub(doc)
  doc.text("Naming")
  code(doc)
  doc.text <<EOS

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

EOS
  sub(doc)
  doc.text("Declarations")
  code(doc)
  doc.text <<EOS

class Declarations {

  var fieldsGo = "together"
  val without = "newlines"
  // if you can't use type inference
  val spaceAfterColon: Boolean = _

  def methodsHaveBlank = "lines"

  def betweenThem = "for clarity"

  // order modifiers like so
  @Annotations
  override protected final def foo() = {
  }

  def curriedMethod(a: Int)(b: Int) = 
    "looks like this"
}

// braces make it clear for most functions
val func = { (a:Int, b:Int) => a + b }

// really short ones should look like this
val tight = (Int,Int) => _ + _
EOS
end
doc.render_file("refcard.pdf")
