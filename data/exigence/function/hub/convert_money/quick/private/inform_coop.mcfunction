# Called from done converting if co-op profile

## CONSTRAINTS
#   AS player

#====================================================================================================

# Broadcast to fellow co-op members
tag @s add DontTitle

scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id
scoreboard players operation #temp Temp = @s hub.coin_conversion.coins_converted
scoreboard players operation #temp2 Temp = @s hub.coin_conversion.money_converted
scoreboard players operation #temp3 Temp = @s hub.coin_conversion.leftover_coins

# Tag co-op players to message
execute as @a[tag=!DontTitle] if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id run tag @s add YesntTitle

tellraw @a[tag=YesntTitle] [{selector:"@s",color:gold},{text:" converted ",color:"gray"},{"score":{"name":"#temp","objective":"Temp"},color:"gold"}\
,{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"},{"score":{"name":"#temp2","objective":"Temp"},color:"gold"},{text:" 💎",color:"gold"}\
,{text:" ( ",color:"dark_gray"},{score:{name:"#temp3",objective:"Temp"},color:"dark_gray"},{text:" leftover 🔘 )",color:"dark_gray"}]

tag @a[tag=YesntTitle] remove YesntTitle

tag @s remove DontTitle