# Check player cooldown on click

## CONSTRAINTS
#   AS player

#=============================================================================================================

execute if score @s hub.player.interaction_cooldown matches 1.. run playsound block.fire.extinguish ui @s ~ ~ ~ 1 1
tellraw @s[scores={hub.player.interaction_cooldown=1..}] {text:"✖ Slow down!",color:"red"}
execute if score @s hub.player.interaction_cooldown matches 1.. run return fail

# Success
return 1