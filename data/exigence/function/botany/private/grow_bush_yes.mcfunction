# called by grow_bush if it found a bush to grow

## CONSTRAINTS
#   AS berrynode

#=======================================================================================================

scoreboard players add @a[tag=ActivePlayer] cr_berryBushesGrown 1
scoreboard players add @a[tag=ActivePlayer] t_berryBushesGrown 1
execute if score GrowthLevel DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesGrownL1 1
execute if score GrowthLevel DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesGrownL1 1
execute if score GrowthLevel DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesGrownL2 1
execute if score GrowthLevel DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesGrownL2 1
execute if score GrowthLevel DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesGrownL3 1
execute if score GrowthLevel DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesGrownL3 1
execute if score GrowthLevel DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] cr_berryBushesGrownL4 1
execute if score GrowthLevel DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] t_berryBushesGrownL4 1
function exigence:botany/node/berry_bush_grow
