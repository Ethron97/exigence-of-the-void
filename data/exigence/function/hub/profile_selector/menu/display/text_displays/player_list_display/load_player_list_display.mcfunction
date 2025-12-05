# Loads a single line for the coop list

## CONSTRAINTS
#   AS slot display
#   AT location

## INPUT
#   INT num (value 1-4)
#   INT coop_profile_id
#   DATA exigence:temp profile
#   SCORE #compare profile.node.player_id

#=============================================================================================================

#say Load coop playuer list

# Summon text display
$summon minecraft:text_display ~ ~ ~ {line_width:115,billboard:"fixed",alignment:"center",Tags:["CoopPlayerDisplay","CoopPlayerDisplay$(num)","NewTextDisplay"]\
,background:1,text:[{text:"",color:"white"},{text:"1234567890123456",color:"yellow"}]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.27f,0.27f,0.27f]}}

#,background:1,text:[{text:"P$(num): ",color:"white"},{text:"1234567890123456",color:"yellow"}]\

# Give matching scoreboard value
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] IDID = @s IDID
scoreboard players operation @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] hub.entity.profile_selector_id = @s hub.entity.profile_selector_id

data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text.extra[0].text set from storage exigence:temp profile.name

# Update color depending on status of the player
# Default gray
data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text.extra[0].color set value "dark_gray"
# If player is online, yellow
execute as @a if score @s career.player_id = #compare profile.node.player_id run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text.extra[0].color set value "dark_red"
# If player is currently selected this coop profile id, green
$execute as @a[scores={profile.player.coop_profile_id=$(coop_profile_id)}] if score @s career.player_id = #compare profile.node.player_id \
run data modify entity @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] text.extra[0].color set value "green"

# Remove local tag
tag @n[distance=..0.1,type=minecraft:text_display,tag=NewTextDisplay] remove NewTextDisplay
