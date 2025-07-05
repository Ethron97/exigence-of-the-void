# Called by interaction if this has been right clicked

## CONSTRAINTS
#   AS interaction entity right clicked on
#   Must be a FunctionInteraction item display

#=============================================================================================================

# DEBUG
#say function right

# Add local tag
tag @s add Functioning

# Tag the player who interacted
execute on target run tag @s add Interacting
execute on target run scoreboard players operation #compare LookingAtIDID = @s LookingAtIDID

# OLD
# Tag item display with corresponding IDID
#execute as @e[type=minecraft:item_display] run execute if score @s IDID = @e[type=minecraft:interaction,tag=Functioning,limit=1] IDID run tag @s add ItemDisplayFunctioning

# Call macro using the IDID of the itemdisplay that the player is looking at
execute at @s as @e[distance=..20,type=minecraft:item_display] if score @s IDID = #compare LookingAtIDID run function exigence:misc/interaction/call_function_right with entity @s item.components."minecraft:custom_data"

# Remove local tags
tag @e[type=minecraft:interaction,tag=Functioning] remove Functioning
tag @e[type=minecraft:item_display,tag=ItemDisplayFunctioning] remove ItemDisplayFunctioning
tag @a[tag=Interacting] remove Interacting
