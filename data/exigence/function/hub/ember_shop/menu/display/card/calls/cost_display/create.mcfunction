# Create new cost display for this item display
#   Responsible purely for entity creation and assignment

## CONSTRAINTS
#   AS/AT item_display

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) Creating cost display

# Add tag
tag @s add DisplayingCost

# Summon new text display
execute positioned ^ ^-0.49 ^0.01 run summon minecraft:text_display ~ ~ ~ {Rotation:[90.0,0.0],Tags:["CostDisplay","NewCostDisplay","EmberShopDisplay"]\
,CustomName:{text:"TextDisplay | CostDisplay"}\
,text:{text:"Test"},billboard:"fixed",alignment:"center",background:1\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.75f,0.75f,0.75f]}}

# Copy scoreboard value
scoreboard players operation @n[type=minecraft:text_display,tag=NewCostDisplay,distance=..1] IDID = @s IDID

# Merge rotation
#data modify entity @e[distance=..1,type=minecraft:text_display,tag=NewCostDisplay,limit=1] Rotation set from entity @s Rotation

# Remove local tag
tag @n[type=minecraft:text_display,tag=NewCostDisplay,distance=..1] remove NewCostDisplay
