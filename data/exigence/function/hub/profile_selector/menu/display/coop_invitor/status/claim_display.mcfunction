# Claim display as this player pending

## CONSTRAINTS
#   AS text display

## INPUT
#   SCORE #target career.player_id

#====================================================================================================

#say (D3) Claim display

scoreboard players operation @s hub.entity.player_id = #target career.player_id

# Get player name from profile
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #target career.player_id \
run data modify storage exigence:temp profile set from entity @s equipment.head.components."minecraft:profile"

data modify entity @s text.extra[0].text set from storage exigence:temp profile.name
data modify entity @s text.extra[1].text set value " 🕐"