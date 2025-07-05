# Summon a "candle" node to be "lit" when any active altar is lit
#   Used to track progress on Candle puzzle (light all active altars)

execute at @s align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["PuzzleCandle"]}
