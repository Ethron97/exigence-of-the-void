say [3 Aqua: Automatically pick up all items that are glowing]

function exigence:resources/try_consume with storage exigence:resources

# Reset players pickup count
scoreboard players set @a[tag=ActivePlayer,scores={dead=0}] Temp 0

# Call sub-function as each glowing item
execute if score LastConsumeResult Resources matches 1 as @e[type=minecraft:item,scores={GlowRemaining=1..}] at @s at @a[tag=ActivePlayer,scores={dead=0},sort=nearest,limit=1] run function exigence:cards/lightdrawn_spirits/private/pickup

# Tellraw actual amount added
execute if score LastConsumeResult Resources matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run tellraw @s [{text:"Picked up ",color:"gray"},{"score":{"name":"@s","objective":"Temp"},color:"yellow"},{text:" items*",color:"gray"}]
