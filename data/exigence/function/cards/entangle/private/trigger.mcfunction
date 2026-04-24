# called from Play if resources were consumed successfully

#====================================================================================================

scoreboard players add berry.queue game.dungeon.temp 5

execute as @e[type=minecraft:ravager,scores={game.entity.object_level=1},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
execute as @e[type=minecraft:ravager,scores={game.entity.object_level=2},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
execute as @e[type=minecraft:ravager,scores={game.entity.object_level=4},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
