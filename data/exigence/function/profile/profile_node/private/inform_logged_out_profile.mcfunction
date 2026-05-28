# Inform co-op members that player logged out while on this profile

## CONSTRAINTS
#   AS profile node

## INPUT
#   STR profile_identifier
#   STR name
#   INT coop_profile_id

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Inform logged out profile

$tellraw @a[scores={profile.player.coop_profile_id=$(coop_profile_id)}] [{text:"<  ",color:"yellow"},{text:"$(name) ",color:"gold"},{text:"logged out from a shared co-op profile: ",color:"gray"}\
,{sprite:"minecraft:item/$(profile_identifier)",atlas:"items",color:"white"},{sprite:"exigence:item/profile_selector/$(difficulty_id)",atlas:"items",color:"white"}]