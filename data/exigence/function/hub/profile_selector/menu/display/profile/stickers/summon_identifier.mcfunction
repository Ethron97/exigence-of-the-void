# Summon item display to display a unique item for easy profile differentiation
#   Called by summon_stickers, when profile is loaded to a slot

## CONSTRAINTS
#   AS slot display
#   AT location

## INPUT:
#   data: item.components."minecraft:custom_data"

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3) Load identifier sticker

# Summon item display (background)
summon minecraft:item_display ~ ~ ~ {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["ProfileSticker","NewItemDisplay","IdentifierSticker","NewDisplay"],item:{id:"stripped_jungle_wood",count:1\
},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.08f]},CustomName:{text:"ItemDisplay | IdentifierStickerBackground"}}

# Text display with sprite of sprite
$summon minecraft:text_display ^-0.0275 ^-0.15 ^0.045 {teleport_duration:4,Rotation:[0.0f,0.0f],billboard:"fixed",Tags:["ProfileSticker","NewItemDisplay","IdentifierSticker","NewDisplay"]\
,text:[$(profile_icon)],background:1}

# Assign data
$data modify entity @n[type=minecraft:item_display,tag=NewDisplay,distance=..1] item.components."minecraft:custom_data".parent_idid set value '$(idid)'
$data modify entity @n[type=minecraft:item_display,tag=NewDisplay,distance=..1] item.components."minecraft:custom_data".player_id set value '$(player_id)'
$data modify entity @n[type=minecraft:item_display,tag=NewDisplay,distance=..1] item.components."minecraft:custom_data".slot_id set value '$(slot_id)'
$data modify entity @n[type=minecraft:item_display,tag=NewDisplay,distance=..1] item.components."minecraft:custom_data".profile_id set value '$(profile_id)'
$data modify entity @n[type=minecraft:item_display,tag=NewDisplay,distance=..1] item.components."minecraft:custom_data".profile_selector_id set value '$(profile_selector_id)'

$data modify entity @n[type=minecraft:text_display,tag=NewDisplay,distance=..1] data.custom_data.slot_id set value '$(slot_id)'

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=minecraft:item_display,tag=NewDisplay,distance=..1] IDID = #highest IDID

# Copy profile selector id
$scoreboard players set @e[type=#exigence:display,tag=NewDisplay,distance=..1] hub.entity.profile_selector_id $(profile_selector_id)

# Add ID to item data
execute store result entity @n[type=minecraft:item_display,tag=NewDisplay,distance=..1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @e[type=#exigence:display,tag=NewDisplay,distance=..1] remove NewDisplay