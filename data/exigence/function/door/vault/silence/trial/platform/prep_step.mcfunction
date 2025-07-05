# Face entity and blocks in direction from score

## CONSTRAINTS
#   AS/AT silence platform

## INPUT
#   SCORE #silence_previous Random 0..3

#============================================================================================================

# Teleport facing new direction
execute if score #silence_previous Random matches 0 run tp @s ~ ~ ~ -90 0
execute if score #silence_previous Random matches 1 run tp @s ~ ~ ~ 0 0
execute if score #silence_previous Random matches 2 run tp @s ~ ~ ~ 90 0
execute if score #silence_previous Random matches 3 run tp @s ~ ~ ~ 180 0

# DEBUG
#execute if score #silence_previous Random matches 0 run say Facing: East
#execute if score #silence_previous Random matches 1 run say Facing: South
#execute if score #silence_previous Random matches 2 run say Facing: West
#execute if score #silence_previous Random matches 3 run say Facing: North

# Set blocks based on next position
execute if score #silence_previous Random matches 0 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magenta_glazed_terracotta[facing=west] replace magenta_glazed_terracotta
execute if score #silence_previous Random matches 1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magenta_glazed_terracotta[facing=north] replace magenta_glazed_terracotta
execute if score #silence_previous Random matches 2 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magenta_glazed_terracotta[facing=east] replace magenta_glazed_terracotta
execute if score #silence_previous Random matches 3 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magenta_glazed_terracotta[facing=south] replace magenta_glazed_terracotta
