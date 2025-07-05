# Called by game tick - ambient tick

## CONSTRAINTS
#   AS/AT player

#================================================================================================

# Nearby beacon ambience
execute as @e[distance=..32,type=minecraft:armor_stand,tag=BeaconNode,scores={NodeState=0..}] at @s run function exigence:beacon/node/ambient


# FLOATING FLAMES / BEACON HELPER
#execute at @e[type=vex,tag=FloatingFlame] run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0 1
#execute if score FloatingFlameCooldown TickCounter matches 1.. run scoreboard players remove FloatingFlameCooldown TickCounter 1
#execute as @a[tag=ActivePlayer,scores={dead=0},nbt={SelectedItem:{id:"minecraft:nether_star"}}] if score FloatingFlameCooldown TickCounter matches 0 at @s positioned ~ ~ ~ run function exigence:beacon/spawn_floating_flame

execute if score SecondsCooldown TickCounter matches 0 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
execute if score SecondsCooldown TickCounter matches 5 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
execute if score SecondsCooldown TickCounter matches 10 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
execute if score SecondsCooldown TickCounter matches 15 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/guide
