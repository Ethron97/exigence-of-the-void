# Count the total books

## CONSTRAINTS
#   AT profile node

## OUTPUT
#   SCORE #books Temp

#====================================================================================================

scoreboard players set #books Temp 0

execute store result score #temp Temp if items block ~6 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~7 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~8 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~9 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~10 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~11 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~12 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~13 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~14 ~ ~ container.* *
scoreboard players operation #books Temp += #temp Temp

execute store result score #temp Temp if items block ~6 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~7 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~8 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~9 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~10 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~11 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~12 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~13 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~14 ~1 ~ container.* *
scoreboard players operation #books Temp += #temp Temp

execute store result score #temp Temp if items block ~6 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~7 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~8 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~9 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~10 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~11 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~12 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~13 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
execute store result score #temp Temp if items block ~14 ~2 ~ container.* *
scoreboard players operation #books Temp += #temp Temp
