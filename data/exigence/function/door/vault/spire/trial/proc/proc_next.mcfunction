# Drops existing spires and spawns new ones

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# Drop all existing spires
#   Should also kill marker if it runs into barrier
execute as @e[type=minecraft:marker,tag=SpireObject,distance=..24] run function exigence:door/vault/spire/trial/spire/drop

# Kill any markers inside barrier
#execute as @e[type=minecraft:marker,tag=SpireObject] at @s if block ~ ~ ~ minecraft:barrier run tag @s add ShouldKill
#execute as @e[type=minecraft:marker,tag=SpireObject,tag=ShouldKill] run say I should be dead :) (and no purpur)
#kill @e[type=minecraft:marker,tag=SpireObject,tag=ShouldKill]

# Select NewSpires (whatever is on the top layer) to spawn new spires
tag @e[type=minecraft:marker,tag=SpireObject,tag=NewSpire,distance=..24,sort=random,limit=3] add SpireSplit

# Remove NewSpire tag from splits
tag @e[type=minecraft:marker,tag=SpireObject,tag=NewSpire,distance=..24] remove NewSpire

# Randomize how many times each spire splits
execute as @e[type=minecraft:marker,tag=SpireObject,tag=SpireSplit,distance=..24] store result score @s Random run random value 1..3

# Create new spires
execute as @e[type=minecraft:marker,scores={Random=1..},tag=SpireObject,tag=SpireSplit,distance=..24] run function exigence:door/vault/spire/trial/spire/create_falling
execute as @e[type=minecraft:marker,scores={Random=2..},tag=SpireObject,tag=SpireSplit,distance=..24] run function exigence:door/vault/spire/trial/spire/create_falling
#execute as @e[type=minecraft:marker,tag=SpireObject,tag=SpireSplit,scores={Random=3..},distance=..24] run function exigence:door/vault/spire/trial/spire/create_falling

# Remove split
tag @e[type=minecraft:marker,tag=SpireObject,tag=SpireSplit,distance=..24] remove SpireSplit
