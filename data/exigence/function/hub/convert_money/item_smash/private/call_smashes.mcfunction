# Smash 5 random coins together
#say Call smashes

# If there are not at least 5 coins, end and return
#execute unless score coins.converting hub.coin_conversion matches 5.. run say Not enough to smash
execute unless score coins.converting hub.coin_conversion matches 5.. run schedule function exigence:hub/convert_money/item_smash/private/fin_smashing 20t
execute unless score coins.converting hub.coin_conversion matches 5.. run return 1

# Select 5 coins to smash
tag @e[type=minecraft:item,tag=ConvertMoneyCoinItem,limit=5,sort=random,tag=!Smashing] add NewSmashing

execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run function exigence:misc/update_coords

tag @e[type=minecraft:item,tag=NewSmashing] add Smashing

scoreboard players remove coins.converting hub.coin_conversion 5
scoreboard players add coins.converted hub.coin_conversion 5
scoreboard players add money.converted hub.coin_conversion 1

# Assign smash batch
#   Increment smash batch by 1
scoreboard players add smash.batch hub.coin_conversion.math 1
scoreboard players operation @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] hub.coin_conversion.smash_batch = smash.batch hub.coin_conversion.math

# Get average x and y
scoreboard players set average.x hub.coin_conversion.math 0
scoreboard players set average.z hub.coin_conversion.math 0
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run scoreboard players operation average.x hub.coin_conversion.math += @s X
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run scoreboard players operation average.z hub.coin_conversion.math += @s Z
#scoreboard players operation average.x hub.coin_conversion.math /= 100 number
#scoreboard players operation average.z hub.coin_conversion.math /= 100 number
scoreboard players operation average.x hub.coin_conversion.math /= 5 number
scoreboard players operation average.z hub.coin_conversion.math /= 5 number

# Smash em
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=NewSmashing] run function exigence:hub/convert_money/item_smash/private/smash

# Remove local tag
tag @e[type=minecraft:item,tag=NewSmashing] remove NewSmashing

# Iterate, increase speed based on how many have already been converted
execute if score money.converted hub.coin_conversion matches 0..3 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 11t append
execute if score money.converted hub.coin_conversion matches 4 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 10t append
execute if score money.converted hub.coin_conversion matches 5 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 9t append
execute if score money.converted hub.coin_conversion matches 6 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 8t append
execute if score money.converted hub.coin_conversion matches 7 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 7t append
execute if score money.converted hub.coin_conversion matches 8 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 6t append
execute if score money.converted hub.coin_conversion matches 9 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 5t append
execute if score money.converted hub.coin_conversion matches 10 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 4t append
execute if score money.converted hub.coin_conversion matches 11 run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 3t append
execute if score money.converted hub.coin_conversion matches 12.. run schedule function exigence:hub/convert_money/item_smash/private/call_smashes 2t append
