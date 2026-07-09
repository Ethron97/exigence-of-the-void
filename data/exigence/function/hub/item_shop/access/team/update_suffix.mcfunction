# Update currency suffix
# Called from menu player tick, if in a coop profile

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score @s profile.player.coop_profile_index matches 0..1 run return run team modify ItemShop1 suffix [{text:" "},\
{sprite:"exigence:item/glint",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.money_to_spend"},color:"aqua"},{text:" "}\
,{sprite:"minecraft:item/prize_pottery_sherd",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.research_to_spend"},color:"light_purple"}]

execute if score @s profile.player.coop_profile_index matches 2 run return run team modify ItemShop2 suffix [{text:" "},\
{sprite:"exigence:item/glint",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.money_to_spend"},color:"aqua"},{text:" "}\
,{sprite:"minecraft:item/prize_pottery_sherd",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.research_to_spend"},color:"light_purple"}]

execute if score @s profile.player.coop_profile_index matches 3 run return run team modify ItemShop2 suffix [{text:" "},\
{sprite:"exigence:item/glint",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.money_to_spend"},color:"aqua"},{text:" "}\
,{sprite:"minecraft:item/prize_pottery_sherd",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.research_to_spend"},color:"light_purple"}]

execute if score @s profile.player.coop_profile_index matches 4 run return run team modify ItemShop4 suffix [{text:" "},\
{sprite:"exigence:item/glint",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.money_to_spend"},color:"aqua"},{text:" "}\
,{sprite:"minecraft:item/prize_pottery_sherd",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.research_to_spend"},color:"light_purple"}]