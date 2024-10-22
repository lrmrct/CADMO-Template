#let cover(
  title: none,
  thesis_type: [],
  authors: (),
  date: [],
  advisors: (),
  department: [],
  doc 
) = {
  page(
    margin: (x: 8em, bottom: 13em, top: 10.5em),
    numbering: none
  )[
    #set text(14pt, font: "CMU Sans Serif", weight: "medium")
    #set align(left)
    #image("../imgs/ETHlogo.svg", width: 10em)
    #set align(center + horizon)
    #v(-6em)
    #text(24pt, font: "CMU Sans Serif", weight: "bold", title) 
    #v(3em) 
    #thesis_type
    #let count = authors.len()
    #let ncols = calc.min(count, 3)
    #grid(
      columns: (1fr,) * ncols,
      row-gutter: 24pt,
      ..authors.map(author => [
        #author.name \
        #link("mailto:" + author.email)
      ]),
    )

    #date

    #set align(right + bottom)
    #text(11pt, [Advisors: #advisors])
    
    #text(11pt, department)
  ]
  doc
}