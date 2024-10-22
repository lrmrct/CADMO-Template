#let abstract(
  abstract: [],
  doc 
) = {
  page(numbering: "i")[
    #counter(page).update(1)
    #line(length: 100%, stroke: 0.5pt)
    #align(center)[
      #strong("Abstract") #linebreak()
    ]
    #abstract
  ]
  doc
}