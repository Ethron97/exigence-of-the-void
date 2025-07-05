# Checks around player for ravager glass to replace

## CONSTRAINTS
#   AS player (alive), that does not have score mod_RavagerHoof=1

#==========================================================================================================

execute at @s positioned ~ ~-2 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
execute at @s positioned ~ ~-1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
execute at @s positioned ~ ~0 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
execute at @s positioned ~ ~1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
execute at @s positioned ~ ~2 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass

execute at @s positioned ~1 ~-1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
execute at @s positioned ~-1 ~-1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
execute at @s positioned ~ ~-1 ~1 run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
execute at @s positioned ~ ~-1 ~-1 run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/game_tick/ravager_glass/remove_ravager_glass
