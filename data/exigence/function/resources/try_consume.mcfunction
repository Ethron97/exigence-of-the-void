# Used for all consumes, including multi-resource consumes
# /function exigence:resources/try_consume {green:#,red:#,aqua:#}

# Clear title data
data modify storage exigence:resource_hud green_consume set value ""
data modify storage exigence:resource_hud red_consume set value ""
data modify storage exigence:resource_hud aqua_consume set value ""
data modify storage exigence:resource_hud green_fail set value ""
data modify storage exigence:resource_hud red_fail set value ""
data modify storage exigence:resource_hud aqua_fail set value ""

scoreboard players set #LastConsumeResult game.resources 0

$scoreboard players set green.cost game.resources $(green)
$scoreboard players set red.cost game.resources $(red)
$scoreboard players set aqua.cost game.resources $(aqua)

# DEBUG
$say try consume $(green) green, $(red) red, $(aqua) aqua
$execute unless score Current.Green game.resources matches $(green).. run say Not enough green
$execute unless score Current.Red game.resources matches $(red).. run say Not enough red
$execute unless score Current.Aqua game.resources matches $(aqua).. run say Not enough aqua

scoreboard players operation #MissingGreen game.resources = green.cost game.resources
scoreboard players operation #MissingRed game.resources = red.cost game.resources
scoreboard players operation #MissingAqua game.resources = aqua.cost game.resources

scoreboard players operation #MissingGreen game.resources -= Current.Green game.resources
scoreboard players operation #MissingRed game.resources -= Current.Red game.resources
scoreboard players operation #MissingAqua game.resources -= Current.Aqua game.resources

scoreboard players operation #MissingGreen game.resources > 0 number
scoreboard players operation #MissingRed game.resources > 0 number
scoreboard players operation #MissingAqua game.resources > 0 number

# If nothing is missing, set succeed = 1
execute if score #MissingGreen game.resources matches 0 if score #MissingRed game.resources matches 0 if score #MissingAqua game.resources matches 0 run scoreboard players set #LastConsumeResult game.resources 1

# MAGMA CREAM
#   Needs to be consumed if anything is missing
execute if score #LastConsumeResult game.resources matches 0 as @a[tag=ActivePlayer,scores={dead=0},nbt={Inventory:[{id:"minecraft:magma_cream"}]},sort=random,limit=1] run function exigence:player/use_item/other/use_magma_cream

# Consume fail
execute if score #MissingGreen game.resources matches 1.. run function exigence:resources/green/consume_fail
execute if score #MissingRed game.resources matches 1.. run function exigence:resources/red/consume_fail
execute if score #MissingAqua game.resources matches 1.. run function exigence:resources/aqua/consume_fail

# Consume amounts
execute if score green.cost game.resources matches 1.. if score #LastConsumeResult game.resources matches 1 run function exigence:resources/green/consume
execute if score red.cost game.resources matches 1.. if score #LastConsumeResult game.resources matches 1 run function exigence:resources/red/consume
execute if score aqua.cost game.resources matches 1.. if score #LastConsumeResult game.resources matches 1 run function exigence:resources/aqua/consume

execute if score #LastConsumeResult game.resources matches 1 run say Successful consume

# Update title
execute if score #LastConsumeResult game.resources matches 1 as @a[tag=ActivePlayer,scores={career.settings.show_resource_consume=1}] run function exigence:resources/display_consume_success with storage exigence:resource_hud
execute if score #LastConsumeResult game.resources matches 0 as @a[tag=ActivePlayer,scores={career.settings.show_resource_underflow=1}] run function exigence:resources/display_consume_fail with storage exigence:resource_hud
title @a title ""

# If failed consume, add tag
execute if score #LastConsumeResult game.resources matches 0 run tag @s[tag=Card] add FailedConsume
