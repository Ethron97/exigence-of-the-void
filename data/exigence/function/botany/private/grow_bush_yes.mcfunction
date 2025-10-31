# called by grow_bush if it found a bush to grow

## CONSTRAINTS
#   AS berrynode

#=======================================================================================================

scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_grown 1
execute if score GrowthLevel DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_grown_L1 1
execute if score GrowthLevel DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_grown_L2 1
execute if score GrowthLevel DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_grown_L3 1
execute if score GrowthLevel DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_grown_L4 1
function exigence:botany/node/berry_bush_grow
