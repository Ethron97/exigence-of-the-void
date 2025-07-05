# Teleport a void merchant to a random position on level 3

## CONSTRAINTS
#   AS void merchant

#=====================================================================================================

# DEBUG
#say I am teleporting

# Reset tags
tag @e[type=minecraft:armor_stand,tag=CanTeleport] remove CanTeleport

# Remove light from head
execute at @s run fill ~ ~2 ~ ~ ~2 ~ air replace light

# Unload shop if loaded
execute if entity @s[tag=Loaded] run function exigence:menu/void_menu/unload

# Playsound?

# Teleport
#   Add all echo (other than chosen) and menace nodes to CanTeleport
tag @e[type=minecraft:armor_stand,tag=EchoNode,scores={ObjectLevel=3},tag=!ChosenEchoNode] add CanTeleport
tag @e[type=minecraft:armor_stand,tag=MenaceNode,scores={ObjectLevel=3}] add CanTeleport
tag @e[type=minecraft:armor_stand,tag=VoidTent,scores={ObjectLevel=3}] add CanTeleport

#   As each CanTeleport, remove tag if there is a bad guy nearby (or enderman)
execute as @e[type=minecraft:armor_stand,tag=CanTeleport] at @s if entity @e[distance=..10,type=#exigence:enemy] run tag @s remove CanTeleport
execute as @e[type=minecraft:enderman,tag=VoidMerchant] at @s as @e[distance=..5,type=minecraft:armor_stand,tag=CanTeleport] run tag @s remove CanTeleport

# (Given the number of nodes, it should be 100% impossible for there to be 0 teleportation locations).

# Remove the nearest 5 options
execute at @s run tag @e[distance=..32,type=minecraft:armor_stand,tag=CanTeleport,sort=nearest,limit=5] remove CanTeleport

#   Teleport the void merchant to a random CanTeleport
tp @s @e[type=minecraft:armor_stand,tag=CanTeleport,sort=random,limit=1]

# Add new light in head
execute at @s run fill ~ ~2 ~ ~ ~2 ~ light[level=10] replace air
