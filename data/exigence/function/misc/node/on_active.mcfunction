# Call as any entity with ObjectLevel
#   Checks if there is any active player on the same level

execute if score @s ObjectLevel matches 1 if entity @a[scores={dead=0,game.player.active_level=1},tag=ActivePlayer] run return 1
execute if score @s ObjectLevel matches 2 if entity @a[scores={dead=0,game.player.active_level=2},tag=ActivePlayer] run return 1
execute if score @s ObjectLevel matches 3 if entity @a[scores={dead=0,game.player.active_level=3},tag=ActivePlayer] run return 1
execute if score @s ObjectLevel matches 4 if entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] run return 1
return 0
