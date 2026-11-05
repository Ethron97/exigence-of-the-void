# Set prefix profile icon etc

## CONSTRAINTS
#   AS player

#====================================================================================================

# Save player_id
execute store result storage exigence:temp x int 1 run scoreboard players get @s career.player_id

# Get icon
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
run data modify storage exigence:temp icon set from entity @s data.custom_data.profile_icon

# Get difficulty
execute if score @s profile.player.profile_difficulty matches 1 run data modify storage exigence:temp difficulty set value {sprite:"exigence:item/profile_selector/difficulty_radiant",atlas:"items",color:"white"}
execute if score @s profile.player.profile_difficulty matches 2 run data modify storage exigence:temp difficulty set value {sprite:"exigence:item/profile_selector/difficulty_ancient",atlas:"items",color:"white"}
execute if score @s profile.player.profile_difficulty matches 3 run data modify storage exigence:temp difficulty set value {sprite:"exigence:item/profile_selector/difficulty_ascendant",atlas:"items",color:"white"}
#execute if score @s profile.player.profile_difficulty matches 4 run data modify storage exigence:temp difficulty set value {sprite:"exigence:item/profile_selector/difficulty_radiant",atlas:"items",color:"white"}

# Get is coop
execute if score @s profile.player.coop_profile_id matches 0 run data modify storage exigence:temp is_coop set value {sprite:"exigence:item/profile_selector/solo_selector",atlas:"items",color:"white"}
execute if score @s profile.player.coop_profile_id matches 1.. run data modify storage exigence:temp is_coop set value {sprite:"exigence:item/profile_selector/coop_selector",atlas:"items",color:"white"}

# Call macro
function exigence:profile/player_node/team/private/set_prefix_macro with storage exigence:temp
