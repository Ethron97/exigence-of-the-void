# Called when a toggle setting is clicked

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

#$say Cycle setting $(scoreboard)

# Increase this random score by 1
scoreboard players add @s Random 1

# Modulo cycle_count
scoreboard players operation @s[tag=Cycle3] Random %= 3 number

# Update player score
$execute at @s run scoreboard players operation @p[distance=..16,tag=ProfileSelecting,tag=Interacting] career.settings.$(scoreboard) = @s Random

# Update item texture
data modify entity @s[scores={Random=0},tag=Cycle3] item.components."minecraft:custom_model_data".strings set value ["cycle_3_0"]
data modify entity @s[scores={Random=1},tag=Cycle3] item.components."minecraft:custom_model_data".strings set value ["cycle_3_1"]
data modify entity @s[scores={Random=2},tag=Cycle3] item.components."minecraft:custom_model_data".strings set value ["cycle_3_2"]

# TODO
#   update preview
