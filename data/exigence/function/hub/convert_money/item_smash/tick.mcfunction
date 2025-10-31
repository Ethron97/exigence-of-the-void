# Get lowest smash batch (oldest)
scoreboard players set lowest.smash.batch hub.coin_conversion.math 100000
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,scores={hub.coin_conversion.smash_batch=1..}] run scoreboard players operation lowest.smash.batch hub.coin_conversion.math < @s hub.coin_conversion.smash_batch


# Remove local tag
tag @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=CurrentBatch] remove CurrentBatch

# Add local tag
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,scores={hub.coin_conversion.smash_batch=1..}] if score @s hub.coin_conversion.smash_batch = lowest.smash.batch hub.coin_conversion.math run tag @s add CurrentBatch
