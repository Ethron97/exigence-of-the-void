say [2 Aqua: +8 Berry Bushes]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 run scoreboard players add BerryQueue DungeonRun 8