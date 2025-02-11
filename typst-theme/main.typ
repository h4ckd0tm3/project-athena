#import "./athena-polylux.typ": *
#import "@preview/pinit:0.1.4": *
#show: athena-theme.with(
  footer: [Footer],
  progress-bar: true,
)

#set text(font: "Berkeley Mono", weight: "regular", size: 20pt)
#show math.equation: set text(font: "Fira Math")
#set strong(delta: 100)
#set par(justify: true)

#title-slide(
  author: [Author],
  title: [Slide Title],
  subtitle: [Subtitle],
  date: [Date],
)

#slide(title: "Outline")[
  #metropolis-outline
]

#new-section-slide("First Chapter")

#slide(title: "First Slide")[
  - Some really important points
  - like, #alert("really") important
]

#slide(title: "Cool box thing")[
  #quotebox(
    footer: text(size: 0.9em, "Some Guy"),
    [
      #lorem(60)
    ],
  )

]


#slide(title: "Cool box thing")[
  #defbox(
    title: [Definition: ],
    [
      $P != N P$
    ],
  )

]



#new-section-slide([Second Chapter])

#focus-slide[
  Wake up!
]