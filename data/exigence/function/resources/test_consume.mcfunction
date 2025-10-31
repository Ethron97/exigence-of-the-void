# Made for spellsing, so we can check if player can pay cost before they "play" the card
#say Test consume

scoreboard players set #LastConsumeTest game.resources 0

data modify storage exigence:resource_hud green_missing set value {text:""}
data modify storage exigence:resource_hud red_missing set value {text:""}
data modify storage exigence:resource_hud aqua_missing set value {text:""}

scoreboard players operation #MissingGreen game.resources = Green.Cost game.resources
scoreboard players operation #MissingRed game.resources = Red.Cost game.resources
scoreboard players operation #MissingAqua game.resources = Aqua.Cost game.resources

scoreboard players operation #MissingGreen game.resources -= Current.Green game.resources
scoreboard players operation #MissingRed game.resources -= Current.Red game.resources
scoreboard players operation #MissingAqua game.resources -= Current.Aqua game.resources

scoreboard players operation #MissingGreen game.resources > 0 number
scoreboard players operation #MissingRed game.resources > 0 number
scoreboard players operation #MissingAqua game.resources > 0 number

execute if score #MissingGreen game.resources matches 0 if score #MissingRed game.resources matches 0 if score #MissingAqua game.resources matches 0 run scoreboard players set #LastConsumeTest game.resources 1

# Consume missing
execute if score #MissingGreen game.resources matches 1.. run function exigence:resources/green/consume_missing
execute if score #MissingRed game.resources matches 1.. run function exigence:resources/red/consume_missing
execute if score #MissingAqua game.resources matches 1.. run function exigence:resources/aqua/consume_missing

# Update title
execute if score #LastConsumeResult game.resources matches 0 run function exigence:resources/display_consume_missing with storage exigence:resource_hud
execute if score #LastConsumeResult game.resources matches 0 run title @s title {text:""}
