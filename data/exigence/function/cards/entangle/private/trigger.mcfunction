# called from Play if resources were consumed successfully

#====================================================================================================

scoreboard players add BerryQueue DungeonRun 5

execute as @e[type=ravager,scores={ObjectLevel=1},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
execute as @e[type=ravager,scores={ObjectLevel=2},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
execute as @e[type=ravager,scores={ObjectLevel=3},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
execute as @e[type=ravager,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:cards/entangle/private/entangle
