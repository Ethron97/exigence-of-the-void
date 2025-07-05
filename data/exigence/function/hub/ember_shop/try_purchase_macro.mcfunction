# To be called from a parent try_purchase source with data exigence:shop
# Call as player

# 1. Check if player has X embers. Store in scoreboard.
execute store result score @s EmbersToSpend run clear @s blaze_powder 0
$execute if score @s EmbersToSpend matches $(ember_cost).. run scoreboard players set @s HasEnoughEmbers 1
$execute unless score @s EmbersToSpend matches $(ember_cost).. run scoreboard players set @s HasEnoughEmbers 0

# If not enough, play bad sound
execute if score @s[gamemode=!creative] HasEnoughEmbers matches 0 at @s positioned ~ ~1000 ~ run playsound minecraft:block.note_block.didgeridoo neutral @a ~ ~ ~ 1000 0.5

# If creative mode, always has enough
execute if entity @s[gamemode=creative] run scoreboard players set @s HasEnoughEmbers 1

# 2. If yes and not creative, clear X embers
$execute if entity @s[gamemode=!creative] if score @s HasEnoughEmbers matches 1 run clear @s blaze_powder $(ember_cost)
