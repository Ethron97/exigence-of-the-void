# Remove other shop options (If it was weighted with multiple markers)

## CONSTRAINTS
#   AS marker

## INPUT
#   STR item

#====================================================================================================

tag @s remove ChosenVoid

$execute as @e[type=minecraft:marker,tag=RandomVoid,distance=..1] if data entity @s {data:{custom_data:{item:'$(item)'}}} run tag @s add SelectedVoid