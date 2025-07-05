# Drops existing spires and spawns new ones

#============================================================================================================

# Drop all existing spires
execute as @e[type=marker,tag=Spire] run function exigence:door/vault/spire/trial/spire/drop

# Kill any markers inside barrier
execute as @e[type=marker,tag=Spire] at @s if block ~ ~ ~ minecraft:barrier run tag @s add ShouldKill
#execute as @e[type=marker,tag=Spire,tag=ShouldKill] run say I should be dead :) (and no purpur)
kill @e[type=marker,tag=Spire,tag=ShouldKill]

# Select NewSpires (whatever is on the top layer) to spawn new spires
tag @e[type=marker,tag=Spire,tag=NewSpire,limit=3,sort=random] add SpireSplit

# Remove NewSpire tag from splits
tag @e[type=marker,tag=NewSpire] remove NewSpire

# Randomize how many times each spire splits
execute as @e[type=marker,tag=Spire,tag=SpireSplit] store result score @s Random run random value 1..3

# Create new spires
execute as @e[type=marker,tag=Spire,tag=SpireSplit,scores={Random=1..}] run function exigence:door/vault/spire/trial/spire/create_falling
execute as @e[type=marker,tag=Spire,tag=SpireSplit,scores={Random=2..}] run function exigence:door/vault/spire/trial/spire/create_falling
#execute as @e[type=marker,tag=Spire,tag=SpireSplit,scores={Random=3..}] run function exigence:door/vault/spire/trial/spire/create_falling

# Remove split
tag @e[type=marker,tag=Spire,tag=SpireSplit] remove SpireSplit
