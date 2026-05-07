# Called from crystal e tick every second

## CONSTRAINTS
#   AS/AT crystal (interaction)

#====================================================================================================

# Sound
playsound minecraft:block.conduit.ambient.short ambient @a ~ ~ ~ 2 1

# Crytal ward animation
execute as @e[type=minecraft:item_display,tag=CrystalDisplay,distance=..3] at @s run function exigence:game/other/wards/crystal/animate/new_frame

# Check for glow (if player is holding the shard)s
# TODO disabled for now, playtest