# Called by interaction if this has been right clicked

## CONSTRAINTS
#   AS interaction entity right clicked on
#   Must be a FunctionInteraction item display

#====================================================================================================

# DEBUG
#say function right

# Is direct function?
data modify storage exigence:temp function_right set from entity @s data.custom_data.function_right
execute if data entity @s data.custom_data.function_right on target run return run function exigence:misc/interaction/call_function_right with storage exigence:temp
#----------------------------------------------------------------------------------------------------

execute on target run scoreboard players operation #compare shop.player.looking_at_idid = @s shop.player.looking_at_idid

# Check cooldown
execute on target unless function exigence:misc/interaction/check_cooldown run return fail
#----------------------------------------------------------------------------------------------------

# Call macro using the IDID of the itemdisplay that the player is looking at
execute at @s as @e[type=minecraft:item_display,distance=..20] if score @s IDID = #compare shop.player.looking_at_idid run function exigence:misc/interaction/call_function_right with entity @s item.components."minecraft:custom_data"
