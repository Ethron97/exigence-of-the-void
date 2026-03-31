# Called when a toggle setting is clicked

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#====================================================================================================

#$say Toggle setting $(scoreboard)

# Increase this random score by 1
scoreboard players add @s Random 1

# Modulo 2
scoreboard players operation @s Random %= 2 number

# Update player score
$execute at @s run scoreboard players operation @p[tag=ProfileSelecting,tag=Interacting,distance=..16] career.settings.$(scoreboard) = @s Random

# Update item texture
data modify entity @s[scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @s[scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]

# TODO
#   update preview
