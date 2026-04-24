# Check for ambient particles

## CONSTRAINTS
#   AS/AT berry node

#====================================================================================================

#   Unglow if glowing and further than X blocks away or if it is not active
execute if entity @s[tag=BerryGlowing] unless entity @a[scores={dead=0,game.player.mod.berry_vision=1},tag=ActivePlayer,distance=..16] run function exigence:botany/node/unglow

# Particles on overgrown berries
execute if entity @s[tag=Overgrown] if entity @a[tag=ActivePlayer,distance=..24,limit=1] run particle happy_villager ~ ~0.3 ~ 0.3 0.3 0.3 0 1

# Ambrosia particles
execute if score mod.ambrosia game.modifiers matches 1.. if entity @a[tag=ActivePlayer,distance=..24,limit=1] run particle minecraft:dust_color_transition{from_color:[0.75f,1.0f,0.1f],scale:1.0f,to_color:[0.0f,0.75f,0.1f]} ~ ~0.3 ~ 0.3 0.3 0.3 0 1
