say 3 Aqua: +5 🍪, +5 🔥, +1 minute of Flicker and Glimmer

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run function exigence:cards/prosperity/trigger
