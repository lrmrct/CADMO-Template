#let theorem_counter = counter("theorem_counter")
#let theorem(
  body,
  name: "Theorem",
  author: none,
) = {
  theorem_counter.step()
  [
    #strong()[
      #name 
      #context {
        counter(heading.where(level: 1)).display()
        "."
        theorem_counter.display()
      }
      #if author != none {
        [(#author)]
      }
    ]
    #h(0.6em)
    #if name != "Rule" {
      emph()[#body] 
    } else {
      body 
    }
  ]
}

#let proof(
  body
) = {
  box[
    #strong()[Proof]#h(0.4em) #body
    #h(1fr) $square$
  ]
}

#let counter_reset(
 theorem_counter: theorem_counter 
) = {
  theorem_counter.update(0)
}