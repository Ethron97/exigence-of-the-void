say [2 Aqua: ALL grown bushes have a 25% chance to gain +1/2 berries]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 as @e[type=minecraft:armor_stand,tag=BerryNode,tag=Active,tag=Grown] run function exigence:cards/overgrowth/private/trigger
