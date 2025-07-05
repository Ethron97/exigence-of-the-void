# Called by summon_line

## CONSTRAINTS
#   AS MenuLine

## INPUT
#   STR/FLOAT ('1.0') thickness - Line thickness
#   STR/FLOAT ('1.0') offset - To center the line, should be half the thickness in float (easier to input than calculate)
#   STR/FLOAT ('1.0') length - Line length measured in blocks

#=============================================================================================================

# Give score
scoreboard players operation @s IDID = #compare IDID

# Teleport facing DrawLineTo facing second entity
execute as @e[distance=..1,type=minecraft:block_display,tag=NewMenuLine] at @s anchored eyes facing entity @e[distance=..10,tag=DrawLineTo,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# Merge translation
$data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-$(offset),-$(offset),0.0f],scale:[$(thickness),$(thickness),$(length)f]}}

# Save rotation in data
data modify storage exigence:menu rotation set from entity @s Rotation

# Merge rotation with MenuAnchor
execute at @s run data modify entity @s Rotation set from entity @e[distance=..10,type=minecraft:armor_stand,tag=MenuAnchor,limit=1] Rotation

# Teleport back so it is behind the item displays
execute at @s run tp @s ^ ^ ^-0.1

# Restore rotation from data
data modify entity @s Rotation set from storage exigence:menu rotation

# Remove local tag
tag @s remove NewMenuLine
