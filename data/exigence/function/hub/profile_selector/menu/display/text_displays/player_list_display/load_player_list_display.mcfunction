# Loads a single line for the coop list

## CONSTRAINTS
#   AS slot display
#   AT location

## INPUT
#   INT num (value 1-4)
#   INT coop_profile_id
#   DATA exigence:temp profile
#   SCORE #compare profile.node.player_id

#====================================================================================================

#say (D3) Load coop player list

# Summon text display
$summon minecraft:text_display ~ ~ ~ {line_width:115,billboard:"fixed",alignment:"center",Tags:["CoopPlayerDisplay","CoopPlayerDisplay$(num)","NewTextDisplay"]\
,background:1,brightness:{sky:6,block:6},text:[{text:"",color:"white"},{text:"1234567890123456",color:"yellow"}]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.27f,0.27f,0.27f]}}
#,background:1,text:[{text:"P$(num): ",color:"white"},{text:"1234567890123456",color:"yellow"}]\

# Give scoreboard value
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] IDID = @s IDID
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id
scoreboard players operation @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] hub.entity.player_id = #compare profile.node.player_id
$scoreboard players set @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] Random $(coop_profile_id)

# Set name from storage
data modify entity @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] text.extra[0].text set from storage exigence:temp profile.name

# Update color
execute as @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] \
run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/private/update_display

# Remove local tag
tag @n[type=minecraft:text_display,tag=NewTextDisplay,distance=..0.1] remove NewTextDisplay
