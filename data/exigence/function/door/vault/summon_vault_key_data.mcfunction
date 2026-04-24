# Assign data to newly summoned vault key, from summon_vault_key

## CONSTRAINTS
#   AS/AT item (VaultKey)

#====================================================================================================

# Playsound
playsound minecraft:block.trial_spawner.open_shutter neutral @a ~ ~ ~ 2 1

# Add to Treasure scoreboard team (for glow color)
team join Treasure @s

# Set object level
scoreboard players operation @s game.entity.object_level = #compare node.property.object_level

# If treasure debug on, glow key
execute if data storage exigence:treasure_drop {debug:1} run data modify entity @s Glowing set value true

# Remove "NewVaultKey" tag
tag @s remove NewVaultKey
