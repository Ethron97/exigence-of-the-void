# Made for spellsing, so we can check if player can pay cost before they "play" the card
#say Test consume

scoreboard players set LastConsumeTest Resources 0

data modify storage exigence:resource_hud green_missing set value {text:""}
data modify storage exigence:resource_hud red_missing set value {text:""}
data modify storage exigence:resource_hud aqua_missing set value {text:""}

scoreboard players operation #MissingGreen Resources = GreenCost Resources
scoreboard players operation #MissingRed Resources = RedCost Resources
scoreboard players operation #MissingAqua Resources = AquaCost Resources

scoreboard players operation #MissingGreen Resources -= Green Resources
scoreboard players operation #MissingRed Resources -= Red Resources
scoreboard players operation #MissingAqua Resources -= Aqua Resources

scoreboard players operation #MissingGreen Resources > 0 number
scoreboard players operation #MissingRed Resources > 0 number
scoreboard players operation #MissingAqua Resources > 0 number

execute if score #MissingGreen Resources matches 0 if score #MissingRed Resources matches 0 if score #MissingAqua Resources matches 0 run scoreboard players set LastConsumeTest Resources 1

# Consume missing
execute if score #MissingGreen Resources matches 1.. run function exigence:resources/green/consume_missing
execute if score #MissingRed Resources matches 1.. run function exigence:resources/red/consume_missing
execute if score #MissingAqua Resources matches 1.. run function exigence:resources/aqua/consume_missing

# Update title
execute if score LastConsumeResult Resources matches 0 run function exigence:resources/display_consume_missing with storage exigence:resource_hud
execute if score LastConsumeResult Resources matches 0 run title @s title {text:""}
