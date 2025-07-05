# Summon interaction box around item display

## CONSTRAINTS
#   AT location
#   AS ItemDisplay with IDID

## INPUT
#   STR menu_tag

#=============================================================================================================

## DEPRECATED



#   "FunctionInteraction" tells the game that this will can have an accompanying item with a function in the data to call when right clicked or left clicked
$summon minecraft:interaction ^ ^-0.15 ^ {Tags:["$(menu_tag)","NewInteraction","Interaction","FunctionInteraction"],height:0.3f,width:0.3f,response:1b}

# Copy IDID to connect interaction to item display
scoreboard players operation @e[distance=..1,type=minecraft:interaction,tag=NewInteraction,limit=1] IDID = @s IDID

tag @e[type=minecraft:interaction,tag=NewInteraction] remove NewInteraction
