# Call as ravager
#say I am tryig to eat
# If the nearest berry bush (on same level) is active, give +30s Beast Sense and then deactivate
scoreboard players operation #compare ObjectLevel = @s ObjectLevel
execute at @s as @e[type=minecraft:armor_stand,tag=BerryNode,sort=nearest,limit=1] if score @s ObjectLevel = #compare ObjectLevel if entity @s[tag=Active] run function exigence:cards/berry_breath/private/eat

# Remove local tag
tag @s remove TryEat
