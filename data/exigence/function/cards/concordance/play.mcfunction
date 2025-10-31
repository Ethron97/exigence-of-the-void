say [4 Aqua: For the rest of the run, lighting an altar grants one of the following effects: +60 seconds Beastsense, +45 seconds Glimmer, +30 seconds Flicker]

function exigence:resources/try_consume with storage exigence:resources
execute if score #LastConsumeResult game.resources matches 1 run scoreboard players add Concordance Modifiers 1
