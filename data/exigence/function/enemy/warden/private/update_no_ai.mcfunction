# Update whether this warden should have no ai

## CONSTRAINTS
#   AS/AT Warden with no ai

#====================================================================================================

# If warden has NO AI and there is a player on their level, un-ai
## SWITCH
execute if score @s game.entity.object_level matches 1 run return run execute if entity @a[scores={dead=0,game.player.active_level=1},tag=ActivePlayer] run data modify entity @s NoAI set value false
execute if score @s game.entity.object_level matches 2 run return run execute if entity @a[scores={dead=0,game.player.active_level=2},tag=ActivePlayer] run data modify entity @s NoAI set value false
execute if score @s game.entity.object_level matches 3 run return run execute if entity @a[scores={dead=0,game.player.active_level=3},tag=ActivePlayer] run data modify entity @s NoAI set value false
execute if score @s game.entity.object_level matches 4 run return run execute if entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] run data modify entity @s NoAI set value false
