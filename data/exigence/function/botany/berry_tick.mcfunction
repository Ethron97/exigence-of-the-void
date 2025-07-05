# Called by game_tick

execute if score BerryQueue DungeonRun matches 1.. as @a[tag=ActivePlayer,scores={dead=0},sort=random,limit=1] run function exigence:botany/resolve_berry



# Particles on overgrown berries
execute at @e[type=minecraft:armor_stand,tag=BerryNode,tag=Overgrown] if entity @a[distance=..24,tag=ActivePlayer] run particle happy_villager ~ ~0.3 ~ 0.3 0.3 0.3 0 1

# Ambrosia particles
execute if score Ambrosia Modifiers matches 1.. at @e[type=minecraft:armor_stand,tag=BerryNode,tag=Active] if entity @a[distance=..24,tag=ActivePlayer] run particle minecraft:dust_color_transition{from_color:[0.75f,1.0f,0.1f],scale:1.0f,to_color:[0.0f,0.75f,0.1f]} ~ ~0.3 ~ 0.3 0.3 0.3 0 1
