# Used for all consumes, including multi-resource consumes
# /function exigence:resources/try_consume {green:#,red:#,aqua:#}

# Clear title data
data modify storage exigence:resource_hud green_consume set value {text:""}
data modify storage exigence:resource_hud red_consume set value {text:""}
data modify storage exigence:resource_hud aqua_consume set value {text:""}
data modify storage exigence:resource_hud green_fail set value {text:""}
data modify storage exigence:resource_hud red_fail set value {text:""}
data modify storage exigence:resource_hud aqua_fail set value {text:""}

scoreboard players set #used_cream game.resources 0
scoreboard players set #LastConsumeResult game.resources 0

$scoreboard players set green.cost game.resources $(green)
$scoreboard players set red.cost game.resources $(red)
$scoreboard players set aqua.cost game.resources $(aqua)

# DEBUG
$execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) try consume $(green) green, $(red) red, $(aqua) aqua
$execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. unless score green.current game.resources matches $(green).. run say (D3 Game) Not enough green
$execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. unless score red.current game.resources matches $(red).. run say (D3 Game) Not enough red
$execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. unless score aqua.current game.resources matches $(aqua).. run say (D3 Game) Not enough aqua

scoreboard players operation #MissingGreen game.resources = green.cost game.resources
scoreboard players operation #MissingRed game.resources = red.cost game.resources
scoreboard players operation #MissingAqua game.resources = aqua.cost game.resources

scoreboard players operation #MissingGreen game.resources -= green.current game.resources
scoreboard players operation #MissingRed game.resources -= red.current game.resources
scoreboard players operation #MissingAqua game.resources -= aqua.current game.resources

scoreboard players operation #MissingGreen game.resources > 0 number
scoreboard players operation #MissingRed game.resources > 0 number
scoreboard players operation #MissingAqua game.resources > 0 number

scoreboard players operation #Missing game.resources = #MissingGreen game.resources
scoreboard players operation #Missing game.resources += #MissingRed game.resources
scoreboard players operation #Missing game.resources += #MissingAqua game.resources

# Mark as unplayable if the cost is greater than the max
scoreboard players set #Unplayable game.resources 0
execute unless score green.cost game.resources <= green.max game.resources unless score red.cost game.resources <= red.max game.resources unless score aqua.cost game.resources <= aqua.max game.resources run scoreboard players set #Unplayable game.resources 1

# If nothing is missing, set succeed = 1
execute if score #MissingGreen game.resources matches 0 if score #MissingRed game.resources matches 0 if score #MissingAqua game.resources matches 0 run scoreboard players set #LastConsumeResult game.resources 1

# MAGMA CREAM
#   Get how many resources can be supplemented (at least 1 magma cream = +1-2 wild resources)
scoreboard players set #WildResources game.resources 0
#   FOR NOW: Applies max of once per card
execute if entity @a[tag=ActivePlayer,scores={dead=0},nbt={Inventory:[{id:"minecraft:magma_cream"}]},limit=1] run scoreboard players add #WildResources game.resources 2
#execute if score #LastConsumeResult game.resources matches 0 as @a[tag=ActivePlayer,scores={dead=0},nbt={Inventory:[{id:"minecraft:magma_cream"}]},sort=random,limit=1] run function exigence:player/use_item/other/use_magma_cream
#   If playable and missing <= wild, apply some creams one player at a time
execute if score #Unplayable game.resources matches 0 if score #Missing game.resources <= #WildResources game.resources \
as @a[tag=ActivePlayer,scores={dead=0},nbt={Inventory:[{id:"minecraft:magma_cream"}]},sort=random,limit=1] at @s run function exigence:player/use_item/other/use_magma_cream

# Consume fail
execute if score #MissingGreen game.resources matches 1.. run function exigence:resources/green/consume_fail
execute if score #MissingRed game.resources matches 1.. run function exigence:resources/red/consume_fail
execute if score #MissingAqua game.resources matches 1.. run function exigence:resources/aqua/consume_fail

# Consume amounts
execute if score green.cost game.resources matches 1.. if score #LastConsumeResult game.resources matches 1 run function exigence:resources/green/consume
execute if score red.cost game.resources matches 1.. if score #LastConsumeResult game.resources matches 1 run function exigence:resources/red/consume
execute if score aqua.cost game.resources matches 1.. if score #LastConsumeResult game.resources matches 1 run function exigence:resources/aqua/consume

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. if score #LastConsumeResult game.resources matches 1 run say Successful consume

# Update title
execute if score #LastConsumeResult game.resources matches 1 as @a[scores={career.settings.show_resource_consume=1},tag=ActivePlayer] run function exigence:resources/display_consume_success with storage exigence:resource_hud
execute if score #LastConsumeResult game.resources matches 0 as @a[scores={career.settings.show_resource_underflow=1},tag=ActivePlayer] run function exigence:resources/display_consume_fail with storage exigence:resource_hud
title @a title ""

# Put the consume result in chat too
execute if score #LastConsumeResult game.resources matches 1 run function exigence:resources/display_consume_success_chat with storage exigence:resource_hud
execute if score #LastConsumeResult game.resources matches 0 run function exigence:resources/display_consume_fail_chat with storage exigence:resource_hud

# If failed consume, add tag
execute if score #LastConsumeResult game.resources matches 0 run tag @s[tag=Card] add FailedConsume
