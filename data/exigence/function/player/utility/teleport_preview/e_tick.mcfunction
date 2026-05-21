# Caled from game tick e tick

## CONSTRAINTS
#   AS teleport preview (mannequin)
#       Assumes it is in the game area
#       if it s in the game area, that means it was vetted by player_update already because player_tick is before e_tick

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 5.. run say (D5 Player) Teleport-preview E TICK

scoreboard players set #preview_level Temp 0

scoreboard players operation #compare game.entity.player_number = @s game.entity.player_number
# Store preview level based on player level
execute as @a[scores={dead=0},tag=ActivePlayer] if score @s game.player.player_number = #compare game.entity.player_number \
run scoreboard players operation #preview_level Temp = @s game.player.active_level

scoreboard players set #did_teleport Temp 0

# Run based on player number
#   INPUT: #preview_level Temp
#   OUTPUT: #did_teleport Temp
# If this fails, it will auto teleport them back home
execute if score @s game.entity.player_number matches 1 at @a[scores={dead=0,game.player.player_number=1},tag=ActivePlayer] positioned ^ ^ ^30 \
run function exigence:player/utility/teleport_preview/update_preview
execute if score @s game.entity.player_number matches 2 at @a[scores={dead=0,game.player.player_number=2},tag=ActivePlayer] positioned ^ ^ ^30 \
run function exigence:player/utility/teleport_preview/update_preview
execute if score @s game.entity.player_number matches 3 at @a[scores={dead=0,game.player.player_number=3},tag=ActivePlayer] positioned ^ ^ ^30 \
run function exigence:player/utility/teleport_preview/update_preview
execute if score @s game.entity.player_number matches 4 at @a[scores={dead=0,game.player.player_number=4},tag=ActivePlayer] positioned ^ ^ ^30 \
run function exigence:player/utility/teleport_preview/update_preview

# If no one teleported, remove tag from player
execute if score #did_teleport Temp matches 0 as @a[scores={dead=0},tag=ActivePlayer] if score @s game.player.player_number = #compare game.entity.player_number \
run tag @s remove PreviewingTeleport