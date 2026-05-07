# Called when there are no more coins to convert

## CONSTRAINTS
#   AS player

#====================================================================================================

# Give this player the raw stats
tellraw @s [{text:"You ",color:"gray"},{text:"converted ",color:"gray"},{"score":{"name":"@s","objective":"hub.coin_conversion.coins_converted"},color:"gold"}\
,{text:" 🔘 ",color:"gold"},{text:"to ",color:"gray"}\
,{"score":{"name":"@s","objective":"hub.coin_conversion.money_converted"},color:"gold"},{text:" 💎",color:"gold"}\
,{text:" ( ",color:"dark_gray"},{score:{name:"@s",objective:"hub.coin_conversion.leftover_coins"},color:"dark_gray"},{text:" leftover 🔘 )",color:"dark_gray"}]

# Inform co-op
execute if score @s profile.player.coop_profile_id matches 1.. run function exigence:hub/convert_money/quick/private/inform_coop

# If there are any leftovers, convert those now
execute if score coins.leftover hub.coin_conversion matches 5.. run function exigence:hub/convert_money/leftovers/start_conversion

# Reset
function exigence:hub/convert_money/finish_converting