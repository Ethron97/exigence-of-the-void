# called by grow_bush if there are no bushes to grow

#=======================================================================================================

# If Evergrowth, add 1 to GrowthLevel and recall grow_bush
execute if score Evergrowth Modifiers matches 1 run scoreboard players add GrowthLevel DungeonRun 1
execute if score Evergrowth Modifiers matches 1 run function exigence:botany/grow_bush
execute if score Evergrowth Modifiers matches 1 run return 1

# Else add to fails
say All berries grown on level(s)
scoreboard players add @a[tag=ActivePlayer] cr_berryBushesFailed 1
scoreboard players add @a[tag=ActivePlayer] t_berryBushesFailed 1
execute if score GrowthLevel DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesFailedL1 1
execute if score GrowthLevel DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesFailedL1 1
execute if score GrowthLevel DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesFailedL2 1
execute if score GrowthLevel DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesFailedL2 1
execute if score GrowthLevel DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesFailedL3 1
execute if score GrowthLevel DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesFailedL3 1
execute if score GrowthLevel DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesFailedL4 1
execute if score GrowthLevel DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesFailedL4 1
