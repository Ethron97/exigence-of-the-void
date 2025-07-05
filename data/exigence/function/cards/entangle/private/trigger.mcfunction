# called from Play if resources were consumed successfully

#==========================================================================================================

scoreboard players add BerryQueue DungeonRun 5

execute as @e[type=ravager,scores={ObjectLevel=1},limit=1,sort=random] run function exigence:cards/entangle/private/entangle
execute as @e[type=ravager,scores={ObjectLevel=2},limit=1,sort=random] run function exigence:cards/entangle/private/entangle
execute as @e[type=ravager,scores={ObjectLevel=3},limit=1,sort=random] run function exigence:cards/entangle/private/entangle
execute as @e[type=ravager,scores={ObjectLevel=4},limit=1,sort=random] run function exigence:cards/entangle/private/entangle
