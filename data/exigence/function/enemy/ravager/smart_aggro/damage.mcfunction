# Teleport entity to box

## CONSTRAINTS
#   AS ravager

#====================================================================================================

execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3 Enemy) Damage

# TEMP
damage @s 0 generic by Ethron97

# REAL
#execute if score @s game.ravager.aggroing matches 1 run damage @s 0 generic by @a[scores={game.player.player_number=1},limit=1]
#execute if score @s game.ravager.aggroing matches 2 run damage @s 0 generic by @a[scores={game.player.player_number=1},limit=1]
#execute if score @s game.ravager.aggroing matches 3 run damage @s 0 generic by @a[scores={game.player.player_number=1},limit=1]
#execute if score @s game.ravager.aggroing matches 4 run damage @s 0 generic by @a[scores={game.player.player_number=1},limit=1]

scoreboard players reset @s game.ravager.aggroing