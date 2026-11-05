# Check player cooldown on click

## CONSTRAINTS
#   AS player

#====================================================================================================

# If admin, return sucess
execute if entity @s[tag=Admin] run return 1
#----------------------------------------------------------------------------------------------------

execute if score @s hub.player.interaction_cooldown matches 1.. run playsound block.fire.extinguish ui @s ~ ~ ~ 1 1
tellraw @s[scores={hub.player.interaction_cooldown=1..}] {text:"✖ Slow down!",color:"red"}
execute if score @s hub.player.interaction_cooldown matches 1.. run return fail
#----------------------------------------------------------------------------------------------------

# Success
return 1