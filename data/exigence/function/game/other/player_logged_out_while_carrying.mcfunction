# Called from player log out if that player was in game

#====================================================================================================

# If there is a player carrying, return
execute if entity @a[tag=ActivePlayer,tag=Carrying] run return 0
#----------------------------------------------------------------------------------------------------
# Else kill carried npc

# Kill Villager
execute in minecraft:overworld as @e[type=minecraft:villager,tag=Carried,distance=..1000] run function exigence:misc/entity/unload_entity

# Inform coop
tellraw @a[tag=ActivePlayer,tag=!Carrying] [{text:"Player",color:"dark_aqua"},{text:" dropped their NPC",color:"red"}]
