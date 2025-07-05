# Called from game_tick when chorus fruit has been eaten

## CONSTRAINTS
#   AS active player

#==========================================================================

# Get nodes on same level
scoreboard players operation #compare ObjectLevel = @s ActiveLevel
execute as @e[type=armor_stand,tag=MenaceNode] if score @s ObjectLevel = #compare ObjectLevel run tag @s add OnActiveLevel
execute as @e[type=armor_stand,tag=EchoNode] if score @s ObjectLevel = #compare ObjectLevel run tag @s add OnActiveLevel

# Add candidate tag to nearest X menace/echo nodes
#   Increase values to change weights and average distance
execute at @s run tag @e[type=minecraft:armor_stand,tag=MenaceNode,tag=OnActiveLevel,sort=nearest,limit=15] add ChorusCandidate
execute at @s run tag @e[type=minecraft:armor_stand,tag=EchoNode,tag=OnActiveLevel,sort=nearest,limit=8] add ChorusCandidate

# Eliminate anything with a nearby enemy (nonplayer)
execute as @e[type=minecraft:armor_stand,tag=ChorusCandidate] at @s if entity @e[distance=..10,team=Enemy,type=!player] run tag @s remove ChorusCandidate

# Eliminate the closest X (so you don't teleport right next to where you are)
#   Increase to affect minimum teleportation distance
execute at @s run tag @e[type=minecraft:armor_stand,tag=ChorusCandidate,sort=nearest,limit=12] remove ChorusCandidate

# If no candidates remaining, tp to nearest menace node
execute at @s unless entity @e[type=minecraft:armor_stand,tag=ChorusCandidate] at @e[type=minecraft:armor_stand,tag=MenaceNode,sort=nearest,limit=1] run tp @s ~ ~ ~

# Tp to a random one
execute at @e[type=minecraft:armor_stand,tag=ChorusCandidate,limit=1,sort=random] run tp @s ~ ~ ~

# Playsound
execute at @s run playsound minecraft:entity.enderman.teleport

# Particles
execute at @s run particle minecraft:enchanted_hit ~ ~0.2 ~ 1 0.1 1 0.01 100

# Clear tags
tag @e[type=minecraft:armor_stand,tag=ChorusCandidate] remove ChorusCandidate
tag @e[type=minecraft:armor_stand,tag=OnActiveLevel] remove OnActiveLevel

# Give blindness
effect give @s blindness 3
