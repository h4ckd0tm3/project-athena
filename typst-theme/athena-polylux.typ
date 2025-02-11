// This theme is inspired by https://github.com/matze/mtheme
// The polylux-port was performed by https://github.com/Enivex

// Consider using:
// #set text(font: "Fira Sans", weight: "light", size: 20pt)
// #show math.equation: set text(font: "Fira Math")
// #set strong(delta: 100)
// #set par(justify: true)

#import "@preview/polylux:0.3.1": *
#import "@preview/showybox:2.0.3": showybox
#let m-color-text = rgb("#202228")
#let m-color-primary = rgb("#0288d1")
#let m-color-secondary = rgb("#C2E9FE")
#let m-color-background = rgb("fdfcff")
#let m-color-background-secondary = rgb("#dfdfdf")

#let m-footer = state("m-footer", [])
#let m-page-progress-bar = state("m-page-progress-bar", [])

#let m-cell = block.with(
  width: 100%,
  height: 100%,
  above: 0pt,
  below: 0pt,
  breakable: false,
)

#let m-progress-bar = utils.polylux-progress(ratio => {
  grid(
    columns: (ratio * 100%, 1fr),
    m-cell(fill: m-color-primary), m-cell(fill: m-color-secondary),
  )
})

#let athena-theme(
  aspect-ratio: "16-9",
  footer: [],
  progress-bar: true,
  body,
) = {
  set page(
    paper: "presentation-" + aspect-ratio,
    fill: m-color-background,
    margin: 0em,
    header: none,
    footer: none,
  )
  set list(marker: (text(size: 1.7em, "•"), text(size: 1.5em, "•"), text(size: 1.3em, "•")))
  m-footer.update(footer)
  if progress-bar {
    m-page-progress-bar.update(m-progress-bar)

  }

  body
}

#let title-slide(
  title: [],
  subtitle: none,
  author: none,
  date: none,
  extra: none,
) = {
  let content = {
    set text(fill: m-color-text)
    set align(horizon)
    block(
      width: 100%,
      inset: 2em,
      {
        text(size: 1.8em, strong(title), weight: "regular", fill: m-color-primary)
        if subtitle != none {
          linebreak()
          linebreak()
          text(size: 0.8em, subtitle)
        }
        line(length: 100%, stroke: .05em + m-color-primary)
        set text(size: .8em)
        if author != none {
          block(spacing: 1em, text(weight: "bold", author))
        }
        if date != none {
          block(spacing: 1em, date)
        }
        set text(size: .8em)
        if extra != none {
          block(spacing: 1em, extra)
        }

      },
    )
  }

  logic.polylux-slide(content)
}

#let slide(title: none, body) = {
  let header = {
    set align(top)
    if title != none {
      show: m-cell.with(fill: m-color-text, inset: 1em)
      set align(horizon)
      set text(fill: m-color-background, size: 1.2em)
      strong(title)
      h(1fr)
      box(pad(bottom: .75em, text(size: .5em, "@h4ckd0tm3/project-athena", weight: "medium")))
      box(pad(left: .2em, bottom: .75em, square(fill: m-color-primary, size: .3em)))
    } else {
      h(1fr)
      box(pad(bottom: .75em, text(size: .5em, "@h4ckd0tm3/project-athena", weight: "medium")))
      box(pad(left: .2em, bottom: .75em, square(fill: m-color-primary, size: .3em)))
    }
  }

  let footer = {
    set text(size: 0.7em)
    show: m-cell.with(fill: m-color-background-secondary)
    set align(horizon)

    box(
      align(
        left + top,
        square(
          height: 100%,
          fill: m-color-primary,
          align(
            horizon + center,
            text(fill: m-color-background, weight: "regular", size: .9em, context {logic.logical-slide.display()}),
          ),
        ),
      ),
    )


    h(1fr)
    box(height: 100%, pad(1.5em, text(fill: m-color-text, size: .9em, context {m-footer.get()})))
    place(bottom, block(height: 2pt, width: 100%, context {m-page-progress-bar.get()}))



  }

  set page(
    header: header,
    footer: footer,
    margin: (top: 3em, bottom: 2em),
    fill: m-color-background,
  )

  let content = {
    show: align.with(horizon)
    show: pad.with(left: 2em, 1em)
    set text(fill: m-color-text)
    body
  }

  logic.polylux-slide(content, max-repetitions: 15)
}

#let new-section-slide(name) = {
  let content = {
    utils.register-section(name)
    set align(horizon)
    show: pad.with(20%)
    set text(size: 1.5em)
    name
    block(height: 2pt, width: 100%, spacing: 40pt, m-progress-bar)
  }
  logic.polylux-slide(content)
}

#let focus-slide(body) = {
  set page(fill: m-color-text, margin: 2em)
  set text(fill: m-color-background, size: 1.5em)
  logic.polylux-slide(align(horizon + center, body))
}

#let alert = text.with(fill: m-color-primary)
#let numbering-func(..nums) = {
  box(
    square(
      fill: m-color-primary,
      height: 1.2em,
      align(center, text(fill: m-color-background, weight: "bold", nums.pos().map(str).join("."))),
    ),
  )
}
#let metropolis-outline = utils.polylux-outline(enum-args: (tight: false, numbering: numbering-func))
#let quotebox = showybox.with(
  frame: (
    border-color: m-color-text,
    footer-color: m-color-primary.darken(25%).desaturate(10%),
    body-color: m-color-primary.lighten(80%),
    radius: 0pt,
  ),
  footer-style: (
    color: m-color-background,
    weight: "light",
    align: right,
  ),
  shadow: (
    offset: 5pt,
  ),
)

#let defbox = showybox.with(
  frame: (
    border-color: m-color-text.lighten(20%),
    title-color: m-color-background.darken(30%),
    body-color: m-color-background.darken(10%),
    radius: 0pt,
  ),
  title-style: (
    color: m-color-primary.darken(20%),
    weight: "bold",
    align: left,
  ),
  shadow: (
    offset: 4pt,
  ),
)