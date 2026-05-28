# Called when there are no more coins to convert

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Done converting (instant)

# Give this player the raw stats
tellraw @s [{text:"You ",color:"gray"},{text:"converted ",color:"gray"},{"score":{"name":"@s","objective":"hub.coin_conversion.coins_converted"},color:"gold"}\
,{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"}\
,{"score":{"name":"@s","objective":"hub.coin_conversion.money_converted"},color:"gold"},{text:" 💎",color:"gold"}\
,{text:" ( ",color:"dark_gray"},{score:{name:"@s",objective:"hub.coin_conversion.leftover_coins"},color:"dark_gray"},{text:" leftover 🔘 )",color:"dark_gray"}]

# Title
title @s subtitle [{text:"",color:"gray"},{"score":{"name":"@s","objective":"hub.coin_conversion.coins_converted"},color:"gold"}\
,{text:" 🔘 ",color:"gold"},{text:"-> ",color:"gray"}\
,{"score":{"name":"@s","objective":"hub.coin_conversion.money_converted"},color:"gold"},{text:" 💎",color:"gold"}]
title @s title ""

# Inform co-op
execute if score @s profile.player.coop_profile_id matches 1.. run function exigence:hub/convert_money/instant/private/inform_coop

# Reset
function exigence:hub/convert_money/finish_converting
