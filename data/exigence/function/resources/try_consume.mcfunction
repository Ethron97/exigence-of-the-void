# Used for all consumes, including multi-resource consumes
# /function exigence:resources/try_consume {green:#,red:#,aqua:#}

# Clear title data
data modify storage exigence:resource_hud green_consume set value ""
data modify storage exigence:resource_hud red_consume set value ""
data modify storage exigence:resource_hud aqua_consume set value ""
data modify storage exigence:resource_hud green_fail set value ""
data modify storage exigence:resource_hud red_fail set value ""
data modify storage exigence:resource_hud aqua_fail set value ""

scoreboard players set LastConsumeResult Resources 0

$scoreboard players set GreenCost Resources $(green)
$scoreboard players set RedCost Resources $(red)
$scoreboard players set AquaCost Resources $(aqua)

# DEBUG
$say try consume $(green) green, $(red) red, $(aqua) aqua
$execute unless score Green Resources matches $(green).. run say Not enough green
$execute unless score Red Resources matches $(red).. run say Not enough red
$execute unless score Aqua Resources matches $(aqua).. run say Not enough aqua

scoreboard players operation #MissingGreen Resources = GreenCost Resources
scoreboard players operation #MissingRed Resources = RedCost Resources
scoreboard players operation #MissingAqua Resources = AquaCost Resources

scoreboard players operation #MissingGreen Resources -= Green Resources
scoreboard players operation #MissingRed Resources -= Red Resources
scoreboard players operation #MissingAqua Resources -= Aqua Resources

scoreboard players operation #MissingGreen Resources > 0 number
scoreboard players operation #MissingRed Resources > 0 number
scoreboard players operation #MissingAqua Resources > 0 number

# If nothing is missing, set succeed = 1
execute if score #MissingGreen Resources matches 0 if score #MissingRed Resources matches 0 if score #MissingAqua Resources matches 0 run scoreboard players set LastConsumeResult Resources 1

# MAGMA CREAM
#   Needs to be consumed if anything is missing
execute if score LastConsumeResult Resources matches 0 as @a[tag=ActivePlayer,scores={dead=0},nbt={Inventory:[{id:"minecraft:magma_cream"}]},sort=random,limit=1] run function exigence:player/use_item/other/use_magma_cream

# Consume fail
execute if score #MissingGreen Resources matches 1.. run function exigence:resources/green/consume_fail
execute if score #MissingRed Resources matches 1.. run function exigence:resources/red/consume_fail
execute if score #MissingAqua Resources matches 1.. run function exigence:resources/aqua/consume_fail

# Consume amounts
execute if score GreenCost Resources matches 1.. if score LastConsumeResult Resources matches 1 run function exigence:resources/green/consume
execute if score RedCost Resources matches 1.. if score LastConsumeResult Resources matches 1 run function exigence:resources/red/consume
execute if score AquaCost Resources matches 1.. if score LastConsumeResult Resources matches 1 run function exigence:resources/aqua/consume

execute if score LastConsumeResult Resources matches 1 run say Successful consume

# Update title
execute if score LastConsumeResult Resources matches 1 as @a[tag=ActivePlayer,scores={s_hideConsume=0}] run function exigence:resources/display_consume_success with storage exigence:resource_hud
execute if score LastConsumeResult Resources matches 0 as @a[tag=ActivePlayer,scores={s_hideUnderflow=0}] run function exigence:resources/display_consume_fail with storage exigence:resource_hud
title @a title ""

# If failed consume, add tag
execute if score LastConsumeResult Resources matches 0 run tag @s[tag=Card] add FailedConsume
