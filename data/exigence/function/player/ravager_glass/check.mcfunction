# Checks around player for ravager glass to replace

## CONSTRAINTS
#   AS/AT player (alive)
#   Adventure mode

#====================================================================================================

execute positioned ~ ~-2 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
execute positioned ~ ~-1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
execute positioned ~ ~0 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
execute positioned ~ ~1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
execute positioned ~ ~2 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass

execute positioned ~1 ~-1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
execute positioned ~-1 ~-1 ~ run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
execute positioned ~ ~-1 ~1 run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
execute positioned ~ ~-1 ~-1 run execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run function exigence:game/other/ravager_glass/remove_ravager_glass
