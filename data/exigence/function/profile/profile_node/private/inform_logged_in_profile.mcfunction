# Inform co-op members that player logged in while on this profile

## CONSTRAINTS
#   AS profile node

## INPUT
#   STR profile_identifier
#   STR name
#   STR difficulty_id
#   INT coop_profile_id

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Inform logged in profile

$tellraw @a[tag=!JustLoggedIn,scores={profile.player.coop_profile_id=$(coop_profile_id)}] [{text:">> ",color:"green"},{text:"$(name) ",color:"gold"},{text:"logged in on a shared co-op profile: ",color:"gray"}\
,{sprite:"minecraft:item/$(profile_identifier)",atlas:"items",color:"white"},{sprite:"exigence:item/profile_selector/$(difficulty_id)",atlas:"items",color:"white"}]