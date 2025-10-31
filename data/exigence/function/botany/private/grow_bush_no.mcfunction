# called by grow_bush if there are no bushes to grow

#=======================================================================================================

# If Evergrowth, add 1 to GrowthLevel and recall grow_bush
execute if score Evergrowth Modifiers matches 1 run scoreboard players add GrowthLevel DungeonRun 1
execute if score Evergrowth Modifiers matches 1 run function exigence:botany/grow_bush
execute if score Evergrowth Modifiers matches 1 run return 1

# Else add to fails
say All berries grown on level(s)
scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_failed 1
execute if score GrowthLevel DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_failed_L1 1
execute if score GrowthLevel DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_failed_L2 1
execute if score GrowthLevel DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_failed_L3 1
execute if score GrowthLevel DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.berry.cr.berry_bushes_failed_L4 1
