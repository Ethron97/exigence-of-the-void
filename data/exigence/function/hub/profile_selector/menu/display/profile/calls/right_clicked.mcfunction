# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#=============================================================================================================
execute at @s as @p[distance=..16,tag=ProfileSelecting,tag=Interacting,scores={hub.player.profile_selector_cooldown=1..}] run playsound block.fire.extinguish ui @s ~ ~ ~ 0.5 1.0
tellraw @p[distance=..16,tag=ProfileSelecting,tag=Interacting,scores={hub.player.profile_selector_cooldown=1..}] {text:"✖ Slow down!",color:"red"}
execute if score @p[distance=..16,tag=ProfileSelecting,tag=Interacting] hub.player.profile_selector_cooldown matches 1.. run return 1
#=============================================================================================================

#say Right click profile

function exigence:hub/profile_selector/menu/display/profile/calls/clicked