# Particle on the coins smashing
execute at @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=CurrentBatch] run particle minecraft:item{item:{id:"minecraft:diamond"}} ~ ~ ~ 0 0 0 0.1 10

# playsound on one of the smashings
execute at @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=CurrentBatch,limit=1,sort=random] run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 1
execute at @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=CurrentBatch,limit=1,sort=random] run playsound minecraft:block.note_block.chime neutral @a ~ ~ ~ 1 1

# Give player one Money
execute as @a[tag=ConvertingCoins] run function exigence:hub/convert_money/give_money

# Kill the smashed coins
kill @e[type=minecraft:item,tag=ConvertMoneyCoinItem,tag=CurrentBatch]
