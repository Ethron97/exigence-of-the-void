# Load the profile selector menu

## CONSTRAINTS
#   AT profile selector node

## INPUT
#   INT player_id
#   INT profile_selector_id

#=============================================================================================================

#say Load profile selector menu

# Load the 5 slots:
# Call function to load slot #
$execute positioned ~-2 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:1,profile_selector_id:$(profile_selector_id)}
$execute positioned ~-1 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:2,profile_selector_id:$(profile_selector_id)}
$execute positioned ~0 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:3,profile_selector_id:$(profile_selector_id)}
$execute positioned ~1 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:4,profile_selector_id:$(profile_selector_id)}
$execute positioned ~2 ~1.5 ~-5.4 run function exigence:hub/profile_selector/menu/try_load_slot_ {player_id:$(player_id),slot_id:5,profile_selector_id:$(profile_selector_id)}

# Load player id display
$execute positioned ~ ~4.2 ~-5.49 run summon minecraft:text_display ~ ~ ~ \
{alignment:"center",background:1,line_width:150,Rotation:[0.0f,0.0f],Tags:["MenuTextDisplay"],billboard:'fixed',text:\
[{text:"[ ",color:"dark_gray"},{text:"Player Code: ",color:"yellow"},{text:"$(player_id)",color:"yellow",bold:true,underlined:true},{text:" ]",color:"dark_gray",bold:false,underlined:false}]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}

# Assign id (so it gets cleaned up upon leaving)
$execute positioned ~ ~4.2 ~-5.49 as @n[distance=..0.1,type=text_display,tag=MenuTextDisplay] run scoreboard players set @s hub.entity.profile_selector_id $(profile_selector_id)
