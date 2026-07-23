# Called when player clicks on a displaying card display

## CONSTRAINTS
#   AS/AT card display
#   player with tag Interacting

#====================================================================================================

# Called when a player successfully purchased this card

# Inform players (just assume eveyrone in the shop for simplicity):
tellraw @a[tag=EmberShop] [{text:"Purchased ",color:"gray"},{text:"[",color:"white"}\
,{nbt:"item.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true\
,hover_event:{action:"show_text",value:[{nbt:"item.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true},{text:"\n"},\
{nbt:"item.components.'minecraft:lore'[]",source:"entity",entity:"@s",interpret:true,separator:'\n'}]}}\
,{text:"]",color:"white"},{text:" for ",color:"gray"},{score:{name:"@s",objective:"ember_shop.cost"},color:"gray"},{text:" 🔥",color:"aqua"}]

# If there was a previous card purchasing, finish that one now:
execute if score shop.animating ember_shop matches 1 as @n[distance=..10,type=minecraft:item_display,tag=Purchasing] at @s run function exigence:hub/ember_shop/menu/display/purchase_animation/finish

# Reset library display so it doesn't get messed up by refresh/discard
function exigence:hub/ember_shop/menu/display/purchase_animation/private/update_library_display with entity @s item.components."minecraft:custom_data"

# Set model to blank
function exigence:hub/ember_shop/menu/display/card/set_blank with entity @s item.components."minecraft:custom_data"

# Summon leftover
function exigence:hub/ember_shop/menu/display/card/set_blank/summon_leftover

# If creative mode + sneaking, skip animation and just insta-purchaes
execute if entity @a[distance=..16,tag=Interacting,gamemode=creative,predicate=exigence:player/sneaking] run return run function exigence:hub/ember_shop/menu/display/purchase_animation/instant_finish
#----------------------------------------------------------------------------------------------------

# Double animation popping if
scoreboard players set shop.double_time ember_shop 0
execute if score @s[tag=!Void] ember_shop.rarity matches 4 run scoreboard players set shop.double_time ember_shop 1
execute if score @s[tag=!Void] ember_shop.rarity matches 3 run scoreboard players set shop.double_time ember_shop 1
#execute if score @s ember_shop.cost matches 21.. run scoreboard players set shop.double_time ember_shop 1

# (Starts animations etc)
function exigence:hub/ember_shop/menu/display/purchase_animation/start

# Reduce score (if not creative)
execute unless entity @p[tag=Interacting,gamemode=creative] run scoreboard players operation shop.embers_to_spend ember_shop -= @s ember_shop.cost

# Update purchsability/bossbar
execute at @n[distance=..5,type=minecraft:marker,tag=EmberShopMenuNode] run function exigence:hub/ember_shop/menu/update_embers_to_spend
