## CONSTRAINTS
#   AS BerryNode

# ===============================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Pick bush (tutorial)

# Summon berries
execute store result storage exigence:berry min int 1 run scoreboard players get @s node.berry.min_berries
execute store result storage exigence:berry max int 1 run scoreboard players get @s node.berry.max_berries
function exigence:botany/private/random_berry_amount with storage exigence:berry
execute at @s positioned ~ ~1 ~ run function exigence:botany/private/summon_berries

# Ungrow
function exigence:botany/node/berry_bush_ungrow

# Playsound
execute at @s run playsound minecraft:block.sweet_berry_bush.pick_berries block @a ~ ~ ~
