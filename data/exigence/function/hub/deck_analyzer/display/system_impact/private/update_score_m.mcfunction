# Update pie

## CONSTRAINTS
#   AS text display

## INPUT
#   STR class (eg "Treasure", "Ember")
#   FLOAT x (score value, natural portion)
#   FLOAT z (score value, decimal portion)
#   FLOAT length (length of class bar)

#=============================================================================================================

# Teleport displazy to be on the end of the display
#   Change offset if #temp2 is beyond a threshold
$execute if score #temp2 Temp matches 200000.. at @s at @n[distance=..3,tag=BarChart,tag=$(class)] positioned ^-0.12 ^ ^ run tp @s ^$(length) ^0.01 ^0.01
$execute if score #temp2 Temp matches ..199999 at @s at @n[distance=..3,tag=BarChart,tag=$(class)] positioned ^0.08 ^ ^ run tp @s ^$(length) ^0.01 ^0.01

# Update text
$execute if score #temp4 Temp matches 1.. run data modify entity @s text.extra[0].text set value "\n$(x).$(z)"
$execute unless score #temp4 Temp matches 1.. run data modify entity @s text.extra[0].text set value "\n$(x)"