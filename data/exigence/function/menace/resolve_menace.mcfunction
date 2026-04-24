# If there is MenaceQueue, this gets called.

# Reduce MenaceQueue by 1
scoreboard players remove menace.queue game.dungeon.temp 1

# If no MenaceBlock, increase menace by 1
execute unless score .menace_block game.dungeon matches 1.. run scoreboard players add .menace game.dungeon 1

# If menace just reached 15, redify sculk as warning
# Redify sculk
execute if score .menace game.dungeon matches 15 run function exigence:menace/private/transform_sculk {redify:1}

# If ManceBlock, playsound and reduce MenaceBlock by 1
#execute at @e[type=minecraft:armor_stand,tag=GlobalSound] if score .menace_block game.dungeon matches 1.. run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~1000 ~ 1000 1
execute if score .menace_block game.dungeon matches 1.. run scoreboard players remove .menace_block game.dungeon 1


# Check for max menace
#execute if score .menace game.dungeon matches 20.. if score game.max_menace game.state matches 0 run say Hit max menace
# When hitting max menace for the first time:
# Open every eyeball TODO


# Update storage max_menace boolean if it needs it
execute if score .menace game.dungeon matches 20.. if score game.max_menace game.state matches 0 run function exigence:menace/trigger_max_menace
