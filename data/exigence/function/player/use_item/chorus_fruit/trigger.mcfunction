# Called from game_tick when chorus fruit has been eaten

## CONSTRAINTS
#   AS/AT active player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Use Chorus Fruit

# Get nodes on same level
scoreboard players operation #compare game.player.active_level = @s game.player.active_level
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=PhantomNode] if score @s node.property.object_level = #compare game.player.active_level run tag @s add OnActiveLevel

# Add candidate tag to nearest X menace/echo nodes
#   Increase values to change weights and average distance
execute positioned ~ ~10 ~ run tag @e[type=minecraft:marker,tag=PhantomNode,tag=MenaceNode,tag=OnActiveLevel,distance=..128,sort=nearest,limit=15] add ChorusCandidate
execute positioned ~ ~10 ~ run tag @e[type=minecraft:marker,tag=PhantomNode,tag=EchoNode,tag=OnActiveLevel,distance=..128,sort=nearest,limit=8] add ChorusCandidate

# Eliminate anything with a nearby enemy (nonplayer)
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChorusCandidate] at @s if entity @e[type=!player,team=Enemy,distance=..10] run tag @s remove ChorusCandidate

# Eliminate the closest X (so you don't teleport right next to where you are)
#   Increase to affect minimum teleportation distance
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChorusCandidate,sort=nearest,limit=12] remove ChorusCandidate

# Tp to random candidate
execute at @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChorusCandidate,sort=random,limit=1] run tp @s ~ ~ ~
# ELSE If no candidates remaining, tp to nearest menace node
execute unless entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChorusCandidate] at @n[type=minecraft:marker,tag=MenaceNode,tag=OnActiveLevel,distance=..128] run tp @s ~ ~ ~
execute unless entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChorusCandidate] run say No candidates

# Playsound
execute at @s run playsound minecraft:entity.enderman.teleport

# Particles
execute at @s run particle minecraft:enchanted_hit ~ ~0.2 ~ 1 0.1 1 0.01 100

# Clear tags
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChorusCandidate] remove ChorusCandidate
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=OnActiveLevel] remove OnActiveLevel

# Give blindness
effect give @s blindness 3
