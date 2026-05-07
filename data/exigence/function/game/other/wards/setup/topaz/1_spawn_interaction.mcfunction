# Setup at this echo/menace node

## CONSTRAINTS
#   AS/AT node

#====================================================================================================

execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Spawn interaction TOPAZ

# Remove local tag
tag @s remove NewChosenCrystal

# Add tag so another crystal doesn't select this
tag @s add ChosenCrystal

# Summon the actual Crystal
summon minecraft:interaction ~ ~1 ~ {Tags:["NewCrystal","Crystal","Topaz","ETICK"],response:1b}

# Setup crystal/interaction
#   Removes local tag NewCrystal
execute as @e[type=minecraft:interaction,tag=NewCrystal,distance=..2] at @s run function exigence:game/other/wards/setup/topaz/2_setup_interaction