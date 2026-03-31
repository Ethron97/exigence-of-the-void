# Called by game tick - ambient tick

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Nearby beacon ambience
execute as @e[type=minecraft:armor_stand,scores={game.node.node_state=0..},tag=BeaconNode,distance=..32] at @s run function exigence:beacon/node/ambient

execute if score seconds.cooldown tick_counter matches 0 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
execute if score seconds.cooldown tick_counter matches 5 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
execute if score seconds.cooldown tick_counter matches 10 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
execute if score seconds.cooldown tick_counter matches 15 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
