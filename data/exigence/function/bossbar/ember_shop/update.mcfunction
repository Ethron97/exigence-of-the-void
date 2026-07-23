# Called when number of embers to spend changes

## INPUT
#   SCORE shop.embers_to_spend ember_shop

#====================================================================================================

# If embers to spend <= 100, color = blue
execute if score shop.embers_to_spend ember_shop matches ..80 run bossbar set exigence:ember_shop color blue
# If > 100, use overlap style
execute if score shop.embers_to_spend ember_shop matches 81.. run bossbar set exigence:ember_shop color green

# Get value to put in bossbar (wraparound at 80):
scoreboard players operation #bossbar ember_shop = shop.embers_to_spend ember_shop
execute if score #bossbar ember_shop matches 81..160 run scoreboard players remove #bossbar ember_shop 80
execute if score #bossbar ember_shop matches 81.. run scoreboard players set #bossbar ember_shop 80

# Set bossbar
#execute store result bossbar exigence:ember_shop value run scoreboard players get #bossbar ember_shop
execute store result storage exigence:bossbar value int 1.25 run scoreboard players get #bossbar ember_shop
data modify storage exigence:bossbar name set value 'ember_shop'
function exigence:bossbar/update_bar_macro with storage exigence:bossbar

# Update name:
bossbar set exigence:ember_shop name [{text:"🔥 Ember Shop 🔥",color:"aqua"}\
,{text:"  Embers To Spend: ",color:"gray"},{score:{name:"shop.embers_to_spend",objective:"ember_shop"},color:"aqua"},{text:"/80",color:"dark_gray"}]
