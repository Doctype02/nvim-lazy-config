local alpha = require "alpha"
local dashboard = require "alpha.themes.dashboard"

local phrases = {
  { "I am, unfortunately,", "the Hero of Ages." },

  "Ash fell from the sky.",

  {
    "But you can’t kill me, Lord Tyrant.",
    "I represent that one thing you’ve never been able to kill,",
    "no matter how hard you try.",
    "I am hope.",
  },

  "There’s always another secret.",

  {
    "He smiled despite the grief he felt at the deaths of his men;",
    "he smiled because that was what he did.",
    "That was how he proved to the Lord Ruler-and to himself-that he wasn’t beaten.",
  },
}

local randomIndex = math.random(1, #phrases)
local randomElement = phrases[randomIndex]

dashboard.section.header.val = randomElement
dashboard.section.buttons.val = {
  dashboard.button("; f", "Find Files"),
  dashboard.button("; g", "Find Words"),
  dashboard.button("<C-n>", "File Tree"),
  dashboard.button("q", "Quit"),
}

alpha.setup(dashboard.config)
