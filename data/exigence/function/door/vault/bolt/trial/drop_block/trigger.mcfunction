# Called by tick when trial.object.timer = 0

## CONSTRAINTS
#   AS drop block (block display)

#====================================================================================================

# Return if not drop block
execute unless entity @s[type=minecraft:block_display,tag=DropBlock] run return 1
#----------------------------------------------------------------------------------------------------

# Remove block at position
execute at @s run setblock ~ ~ ~ air

# Playsound
execute at @s run playsound minecraft:block.copper_bulb.break block @a[tag=TrialSounds_Bolt] ~ ~-1 ~ 1 1

# Kill self
kill @s
