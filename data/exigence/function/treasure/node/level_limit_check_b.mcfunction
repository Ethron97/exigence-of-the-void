# Check if level is correct for spawning a coin (must be on same level)

## CONSTRAINTS
#   AS treasure node

#================================================================================================================

# Return 1 if there is not a player within 1 level based on this node's level
execute if score @s ObjectLevel matches 1 unless entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=1}] run return 1
execute if score @s ObjectLevel matches 2 unless entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=2}] run return 1
execute if score @s ObjectLevel matches 3 unless entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=3}] run return 1
execute if score @s ObjectLevel matches 4 unless entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] run return 1

# Return 0 if level is correct
return 0
