# Called by interaction.call_function_left

## CONSTRAINTS:
#   AS item shop display

#=============================================================================================================
execute at @s as @p[distance=..24,tag=Interacting,scores={hub.player.profile_selector_cooldown=1..}] run playsound block.fire.extinguish ui @s ~ ~ ~
tellraw @p[distance=..24,tag=Interacting,scores={hub.player.profile_selector_cooldown=1..}] {text:"Slow down!",color:"red"}
execute if score @p[distance=..24,tag=Interacting] hub.player.profile_selector_cooldown matches 1.. run return 1
#=============================================================================================================

#say Left click profile

function exigence:hub/profile_selector/menu/display/profile/calls/clicked