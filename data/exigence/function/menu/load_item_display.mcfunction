## CONSTRAINTS
# AS item that is to be converted to an item display 
# AT where it should be placed

## INPUT:
#   STR menu_tag - Tag to identify which menu this display belongs to
#   STR rotation - eg [0.0f,0.0f]
#   FLOAT/STR scale - eg '0.5'
#   FLOAT/STR hover_scale - eg '0.7'

#=============================================================================================================

#$say load item display $(Rotation)

# Summon item display
$summon item_display ~ ~ ~ {Rotation:$(Rotation),billboard:"fixed",Tags:["MenuDisplay","NewItemDisplay","NewItemDisplays","MergeRotation","$(menu_tag)"],item:{id:"minecraft:stone",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(scale)f,$(scale)f,$(scale)f]}}

$data modify entity @s Item.components."minecraft:custom_data".scale set value '$(scale)'
$data modify entity @s Item.components."minecraft:custom_data".hover_scale set value '$(hover_scale)'
$data modify entity @s Item.components."minecraft:custom_data".menu_tag set value '$(menu_tag)'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @e[type=minecraft:item_display,tag=NewItemDisplay,limit=1] IDID = #highest IDID

# Add ID to item data
execute store result entity @s Item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Copy rotation to data
$data modify entity @s Item.components."minecraft:custom_data".Rotation set value '$(Rotation)'
$data modify entity @s Item.components."minecraft:custom_data".RotationF set value $(Rotation)
data modify entity @s Item.components."minecraft:custom_data".Rot0 set from entity @s Item.components."minecraft:custom_data".RotationF[0]
data modify entity @s Item.components."minecraft:custom_data".Rot1 set from entity @s Item.components."minecraft:custom_data".RotationF[1]

# Copy item data to item display
#   Ie raw item info, so this is just the item id and model data
data modify entity @e[type=minecraft:item_display,tag=NewItemDisplay,limit=1] item set from entity @s Item

# Local tag to be removed by function that implements this
