# If there is MenaceQueue, this gets called.

# Reduce MenaceQueue by 1
scoreboard players remove MenaceQueue DungeonRun 1

# If no MenaceBlock, increase menace by 1
execute unless score MenaceBlock DungeonRun matches 1.. run scoreboard players add Menace DungeonRun 1

# If menace just reached 15, redify sculk as warning
# Redify sculk
execute if score Menace DungeonRun matches 15 run function exigence:menace/private/transform_sculk {redify:1}

# If ManceBlock, playsound and reduce MenaceBlock by 1
#execute at @e[type=minecraft:armor_stand,tag=GlobalSound] if score MenaceBlock DungeonRun matches 1.. run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~1000 ~ 1000 1
execute if score MenaceBlock DungeonRun matches 1.. run scoreboard players remove MenaceBlock DungeonRun 1


# Check for max menace
#execute if score Menace DungeonRun matches 20.. if data storage exigence:dungeon {max_menace:0} run say Hit max menace
# When hitting max menace for the first time:
# Open every eyeball TODO


# Update storage max_menace boolean if it needs it
execute if score Menace DungeonRun matches 20.. if data storage exigence:dungeon {max_menace:0} run function exigence:menace/trigger_max_menace
