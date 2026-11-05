# Called by interaction if this has been left clicked

## CONSTRAINTS
#   AS interaction entity left clicked on
#   Must be a FunctionInteraction item display

#====================================================================================================

# DEBUG
#say function left

# Is direct function?
data modify storage exigence:temp function_left set from entity @s data.custom_data.function_left
execute if data entity @s data.custom_data.function_left on attacker run return run function exigence:misc/interaction/call_function_left with storage exigence:temp
#----------------------------------------------------------------------------------------------------

execute on attacker run scoreboard players operation #compare shop.player.looking_at_idid = @s shop.player.looking_at_idid

# Check cooldown
execute on attacker unless function exigence:misc/interaction/check_cooldown run return fail
#----------------------------------------------------------------------------------------------------

# Call macro using the IDID of the itemdisplay that the player is looking at
execute at @s as @e[type=minecraft:item_display,distance=..20] if score @s IDID = #compare shop.player.looking_at_idid run function exigence:misc/interaction/call_function_left with entity @s item.components."minecraft:custom_data"
