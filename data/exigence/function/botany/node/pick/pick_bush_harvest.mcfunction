# Special pick case if player is using harvest scythe

## CONSTRAINTS
#   AS BerryNode

# ===============================================================================================================

# Increase score
scoreboard players add @s timesPicked 1

# Generate green
execute as @p[tag=Picking] run function exigence:resources/try_generate {green:2,red:0,aqua:0}

# Increase player scores
execute if entity @s[tag=FromSetup] as @a[tag=Picking] run function exigence:botany/private/increase_scores_from_setup
execute unless entity @s[tag=FromSetup] as @a[tag=Picking] run function exigence:botany/private/increase_scores_from_card

# Ungrow
function exigence:botany/node/berry_bush_ungrow

# Playsound
execute at @s run playsound minecraft:block.sweet_berry_bush.pick_berries block @a ~ ~ ~
