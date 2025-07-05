say [4 Red: For the rest of the run, ringing a bell grants +30 seconds of Clairvoyance]

function exigence:resources/try_consume with storage exigence:resources
execute if score LastConsumeResult Resources matches 1 run scoreboard players add Resonance Modifiers 1
