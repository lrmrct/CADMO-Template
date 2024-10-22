#set document(title: [CADMO Template],
              author: "Elias Rodriguez",
              keywords: ("Template", "CADMO", "ETH Zurich"),
              date: auto)

#import "template/layout.typ": layout 
#import "template/cover.typ": cover
#import "template/abstract.typ": abstract
#import "template/theorems.typ": theorem, proof, counter_reset

#show: layout

#show: cover.with(
  title: [
    Title of Thesis
  ],
  thesis_type: [
    Bachelor Thesis
  ],
  authors: (
    (
      name: "Elias Rodriguez",
      email: "erodrigue@ethz.ch",
    ),
  ),
  date: [January 19, 2038],
  advisors: [Prof. Dr. A. D. Visor, Dr. P. Ostdoc],
  department: [Department of Computer Science, ETH Zürich] 
)

#show: abstract.with(
  abstract:  [This example thesis briefly shows the main features of our thesis style, and how to use it for your purposes.]
)

#outline(title: none, indent: 1.8em)

#set page(numbering: "1")
#counter(page).update(1)
= Introduction
This is version `v1.0` of the template.

I assume that you found this template on my #link("https://github.com/lrmrct/CADMO-Template")[Github], it is a quick and dirty translation of the CADMO thesis template into Typst which was originally written in LaTeX.   
In this chapter I'll give a brief overview of the files and functions you are looking at. Please consult the Typst documentation for more details.

TODOs:
- Add missing text.
- Exact margins and font sizes.
- Section headers.
- Insert Q.E.D. into math body
- Showcase visualizations.
== Features <features>

The rest of this document shows off a few features of the template files. Look
at the source code to see which functions we used!

The template is divided into Typst files as follows:
+ `thesis.typ` is the main file.

+ `layout.typ` defines the style used in this document.
+ `theorems.typ` declares the theorem-like environments.
+ `cover.typ` creates the cover page.
+ `abstract.typ` creates the abstract page.
+ `refs.yml` is an example bibliography file. For example, read the book from Bringhurst @bringhurst1996ets if you can get a hold of it.

  If you need to refer to multiple authors without wanting to name them, you can refer to an article by Einstein et al. @einstein1935can.

=== Extra package includes
There are currently no extra 3rd-party packages included. 

One doesn't need an extra package to reference section in Typst.
As a small example, here is a reference to the Section #emph("Features").
#quote()[
  See @features 
]

=== Layout setup
This defines the overall look of the document -- for example, it
changes the chapter and section heading appearance.  We consider this
a 'do not touch' area. It tries to replicate the look of the excellent #emph("Memoir") package.

=== Theorem setup
This file defines a bunch of theorem-like environments.

#theorem[An example theorem.]

#proof[Proof text goes here.]

Note that the q.e.d. symbol moves to the correct place automatically if you
end a proof. You do not need to use `square`.

#theorem(author: "Some Famous Guy")[Another example theorem.]

#proof[This proof 
1. ends in an enumerate.]

#theorem(name: "Proposition")[
  Note that all theorem-like environments are by default numbered on the same counter.
]

#proof[This proof ends in a display like so:
$ f(x) = x^2. $]

#pagebreak()

=== Macro setup
There is no need for a macro setup in Typst, just look how simple it is:
$ abs(a), space.quad abs(a/b), space.quad abs(size:#75%, a/b). $

= Writing scientific texts in English
This chapter was originally a separate document written by Reto Spöhel. It is reprinted here so that the template can serve as a quick guide to thesis
writing, and to provide some more example material to give you a feeling for good typesetting.

== Basic writing rules
The following rules need little further explanation; they are best understood by looking at the example in the booklet by Knuth et al., §2–§3.

#theorem(name: "Rule")[Write texts, not chains of formulas.]

More specifically, write full sentences that are logically interconnected by phrases like 'Therefore', 'However', 'On the other hand', etc. where appropriate.

#theorem(name: "Rule")[Displayed formulas should be embedded in your text and punctuated with it.]

In other words, your writing should not be divided into 'text parts' and 'formula parts'; instead the formulas should be tied together by your prose such that there is a natural flow to your writing.

== Being nice to the reader

Try to write your text in such a way that a reader enjoys reading it. That's of course a lofty goal, but nevertheless one you should aspire to!

#pagebreak()

#theorem(name: "Rule")[Be nice to the reader.]

Give some intuition or easy example for definitions and theorems which might be hard to digest. Remind the reader of notations you introduced many pages ago – chances are he has forgotten them. Illustrate your writing with diagrams and pictures where this helps the reader. Etc

#theorem(name: "Rule")[Organize your writing.]

Think carefully about how you subdivide your thesis into chapters, sections,
and possibly subsections. Give overviews at the beginning of your thesis and
of each chapter, so the reader knows what to expect. In proofs, outline the
main ideas before going into technical details. Give the reader the opportunity
to 'catch up with you' by summing up your findings periodically.

_Useful phrases:_  'So far we have shown that . . .', 'It remains to show that . . .' , 'Recall that we want to prove inequality (7), as this will allow us to deduce
that . . .', 'Thus we can conclude that . . . . Next, we would like to find out whether . . .', etc.

#theorem(name: "Rule")[Don't say the same thing twice without telling the reader that you are saying it twice.]

Repetition of key ideas is important and helpful. However, if you present the
same idea, definition or observation twice (in the same or different words)
without telling the reader, he will be looking for something new where there
is nothing new.

_Useful phrases:_ 'Recall that [we have seen in Chapter 5 that] . . .', 'As argued before / in the proof of Lemma 3, . . . ', 'As mentioned in the introduction, . . .', 'In other words, . . . ', etc.

#theorem(name: "Rule")[Don't make statements that you will justify later without telling the reader that you will justify them later.]

This rule also applies when the justification is coming right in the next sentence! The reasoning should be clear: if you violate it, the reader will lose valuable time trying to figure out on his own what you were going to explain to him anyway.

_Useful phrases:_ 'Next we argue that . . .', 'As we shall see, . . .', 'We will see in the next section that . . ., etc.

== A few important grammar rules
= Typography

== Punctuation

= Example Chapter
Dummy text.
== Example Section
Dummy text.
=== Example Subsection
Dummy text.
==== Example Subsubsection
Dummy text.


#show outline: set heading(outlined: true)
#bibliography("refs.yml")

#heading(numbering: none)[A Dummy Appendix]
You can defer lengthy calculations that would otherwise only interrupt the flow of your thesis to an appendix.
