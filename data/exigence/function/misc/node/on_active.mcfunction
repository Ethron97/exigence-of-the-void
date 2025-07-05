# Call as any entity with ObjectLevel
#   Checks if there is any active player on the same level

execute if score @s ObjectLevel matches 1 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=1}] run return 1
execute if score @s ObjectLevel matches 2 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=2}] run return 1
execute if score @s ObjectLevel matches 3 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=3}] run return 1
execute if score @s ObjectLevel matches 4 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] run return 1
return 0
