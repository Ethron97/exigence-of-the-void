# Call as bush

# Increase score
scoreboard players add @s timesPicked 1

# Summon berries
# harvest: increase by +1/1
scoreboard players add @s minBerries 1
execute store result storage exigence:berry min int 1 run scoreboard players get @s minBerries
scoreboard players add @s maxBerries 1
execute store result storage exigence:berry max int 1 run scoreboard players get @s maxBerries

function exigence:botany/private/random_berry_amount with storage exigence:berry
execute at @s positioned ~ ~1 ~ run function exigence:botany/private/summon_berries with storage exigence:berry

# Increase player scores
execute if entity @s[tag=FromSetup] as @a[tag=Picking] run function exigence:botany/private/increase_scores_from_setup
execute unless entity @s[tag=FromSetup] as @a[tag=Picking] run function exigence:botany/private/increase_scores_from_card

# Ungrow
function exigence:botany/node/berry_bush_ungrow

# Playsound
execute at @s run playsound minecraft:block.sweet_berry_bush.pick_berries block @a ~ ~ ~
