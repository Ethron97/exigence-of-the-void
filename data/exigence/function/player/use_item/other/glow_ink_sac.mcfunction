# Called by use_item when player uses glow ink sac item

## CONSTRAINTS
# AS player

#====================================================================================================

# DEBUG
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Use glow ink sac

# Set any entity that has glow to 999999
#   Maybe in future set to -1 so it no longer updates... but then we need to change other glow updaters
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=#exigence:glowable,scores={game.entity.glow_remaining=1..}] run function exigence:player/use_item/other/private/apply_glow_ink

# Playsound
playsound minecraft:entity.glow_squid.squirt ambient @a ^ ^ ^3 1 1.5

# Particles
#particle minecraft:dust_color_transition{from_color:[1.0f,0.91f,0.36f],scale:1.0f,to_color:[0.88f,0.26f,1.0f]} ^ ^2 ^4 3 0.5 3 0.1 50
particle glow_squid_ink ^ ^2 ^2 0.3 0.3 0.3 0.2 30

# Clear 
scoreboard players set #remove Temp 1
