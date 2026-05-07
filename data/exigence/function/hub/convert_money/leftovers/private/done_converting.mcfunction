# Called when there are no more leftover coins to convert

## CONSTRAINTS
#   AS player

#====================================================================================================

# Give this player the raw stats
tellraw @s [{text:"You ",color:"dark_gray"},{text:"converted ",color:"dark_gray"},{"score":{"name":"#leftover","objective":"hub.coin_conversion.coins_converted"},color:"gold"}\
,{text:" 🔘",color:"gold"},{text:" leftovers to ",color:"dark_gray"}\
,{"score":{"name":"#leftover","objective":"hub.coin_conversion.money_converted"},color:"gold"},{text:" 💎",color:"gold"}]

# If not co-op, return
execute unless score @s profile.player.coop_profile_id matches 1.. run return 0
#----------------------------------------------------------------------------------------------------

# Broadcast to fellow co-op members
tag @s add DontTitle

scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id

# Tag co-op players to message
execute as @a[tag=!DontTitle] if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id run tag @s add YesntTitle

tellraw @a[tag=YesntTitle] [{selector:"@s",color:gold},{text:" converted ",color:"dark_gray"},{"score":{"name":"#leftover","objective":"hub.coin_conversion.coins_converted"},color:"gold"}\
,{text:" 🔘",color:"gold"},{text:" leftover to ",color:"dark_gray"}\
,{"score":{"name":"#leftover","objective":"hub.coin_conversion.money_converted"},color:"gold"},{text:" 💎",color:"gold"}]

tag @a[tag=YesntTitle] remove YesntTitle

tag @s remove DontTitle
