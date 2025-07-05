# Called by player/death/revive
#   Animates allays that "carry" the player as he floats down

## CONSTRAINTS
#   Allsy exist?

#===============================================================================================================

# If Respawning score = 0, kill and f
#execute if score @s Respawning matches 0 run kill @e[type=minecraft:allay,tag=ReviveAllay]
#execute if score @s Respawning matches 0 run return 1

# Just keep teleporting them around the player
#execute at @a[tag=ActivePlayer,scores={Respawning=1..}] as @e[type=minecraft:allay,tag=ReviveAllay1] run tp @s ~1 ~2 ~ 
#execute at @a[tag=ActivePlayer,scores={Respawning=1..}] as @e[type=minecraft:allay,tag=ReviveAllay2] run tp @s ~-1 ~2 ~

# increase respawning by 1
#scoreboard players remove @a[tag=ActivePlayer,scores={Respawning=1..}] Respawning 1

# Iterate
#schedule function exigence:player/death/private/animate 1t
