## CONSTRAINTS
#   AS BerryNode

# ===============================================================================================================

# Summon berries
execute store result storage exigence:berry min int 1 run scoreboard players get @s node.berry.min_berries
execute store result storage exigence:berry max int 1 run scoreboard players get @s node.berry.max_berries
function exigence:botany/private/random_berry_amount with storage exigence:berry
execute at @s positioned ~ ~1 ~ run function exigence:botany/private/summon_berries with storage exigence:berry

# Increase bush score
scoreboard players add @s node.berry.data.times_picked 1

# Generate green
execute as @p[tag=Picking] run function exigence:resources/try_generate {green:1,red:0,aqua:0}

# Increase player scores
execute if entity @s[tag=FromSetup] as @a[tag=Picking] run function exigence:botany/private/increase_scores_from_setup
execute unless entity @s[tag=FromSetup] as @a[tag=Picking] run function exigence:botany/private/increase_scores_from_card

# Ungrow
function exigence:botany/node/berry_bush_ungrow

# Playsound
execute at @s run playsound minecraft:block.sweet_berry_bush.pick_berries block @a ~ ~ ~
