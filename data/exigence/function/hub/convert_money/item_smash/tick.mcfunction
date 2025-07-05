# Get lowest smash batch (oldest)
scoreboard players set LowestSmashBatch CoinConvertMath 100000
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,scores={SmashBatch=1..}] run scoreboard players operation LowestSmashBatch CoinConvertMath < @s SmashBatch

# Remove local tag
tag @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=CurrentBatch] remove CurrentBatch

# Add local tag
execute as @e[type=minecraft:item,tag=ConvertMoneyCoinItem,scores={SmashBatch=1..}] if score @s SmashBatch = LowestSmashBatch CoinConvertMath run tag @s add CurrentBatch
