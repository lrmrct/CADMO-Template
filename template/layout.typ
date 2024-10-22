#import "theorems.typ": counter_reset
#let layout(doc) = [
  #set page(
    paper: "a4",
    numbering: "i",
    number-align: right,
    margin: (x: 115pt, top: 109pt, bottom: 121pt),
    footer-descent: 18%,
    header: [
    ] 
  )

  #set text(
    font: "tex gyre pagella",
    size: 11pt
  )
  
  #set enum(numbering: "1.", indent: 1.23em, spacing: 11pt)
  #set list(marker: "-")
  #show raw: set text(font: "CMU Typewriter Text", size: 11pt) 

  #set quote(block: true)
  #show quote: q => {
    v(0em)
    h(2.1em); q.body
  }
  
  #show math.equation: set text(font: "tex gyre pagella math")

  #set outline(depth: 3)
  #show outline.entry: it => {
    [
      #it.body.children.at(0) #h(1em)
      #it.body.children.at(2) #h(0.7em)
      #box(width: 1fr, repeat[. #h(0.4em)]) #h(1.5em)
      #it.page
    ]
  }
  #show outline.entry.where(
    level: 1
  ): it => {
    v(0.4em)
    if it.body.has("children") {
      [
      #strong(it.body.children.at(0)) #h(1em)
      #strong(it.body.children.at(2)) #h(1fr) 
      #strong(it.page)
      ]
    } else {
      strong(it.body); h(1fr); strong(it.page)
    }
  }
  #show outline: o => {
      heading(numbering: none)[Contents]
      strong()[
        Contents #h(1fr)
        #context[
        #counter(page).display(here().page-numbering())
        ]
      ]
    o
  }

  #set heading(numbering: "1.1")
  #show heading.where(depth: 1): it => [
    #counter_reset()
    #set align(center)
    #set text(font: "CMU Bright", weight: "extrabold", size: 22pt)
    #pagebreak()
    #v(4em)
    #if it.numbering != none {
      [  
        #set text(size: 14pt)
        Chapter
        #counter(heading).display(
          it.numbering
        )
      ]
    }
    #line(length: 100%, stroke: 0.5pt)
  
    #set text(font: "cmu sans serif",
              weight: "bold")
   
    #it.body
    #v(-0.6em)
    #line(length: 100%, stroke: 0.5pt)
    #v(1.5em)
  ]
  #show heading.where(depth: 2): it => [
    #set text(font: "cmu sans serif",
              weight: "bold", size: 14pt)
    #v(0.4em)
    #counter(heading).display(
         it.numbering
    ) 
    #h(1em) #(it.body) 
    #v(0.1em)
  ]
  #show heading.where(depth: 3): it => [
    #set text(font: "cmu sans serif",
              weight: "bold")
    #v(0.5em)
    #counter(heading).display(
         it.numbering
    ) 
    #h(1em) #(it.body) 
    #v(0.6em)
  ]
  #show heading.where(depth: 4): it => [
    #set text(font: "cmu sans serif",
              weight: "bold")
    #v(0.5em)
              
    #(it.body) 
    #v(0.6em)
  ]
  #doc
]
