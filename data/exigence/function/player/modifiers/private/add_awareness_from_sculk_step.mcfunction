# Add awareness to warden from sculk step

## CONSTRAINTS
#   AS/AT player

## INPUT
#   SCORE #add game.warden.awareness

#====================================================================================================

# Goal: Efficiently call to find the nearest warden on the same level

# Most likely level with wardens, probably level 3. Then 4, then 2 then 1

# Return once a successful match is hit
#   Multiple score checks is prefereable to more distance checks than necessary
execute if score @s game.player.active_level matches 3 as @n[type=minecraft:warden,scores={game.warden.active_level=3},distance=..50] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 3 as @n[type=minecraft:warden,scores={game.warden.active_level=3},distance=..100] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 3 as @n[type=minecraft:warden,scores={game.warden.active_level=3},distance=..200] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness

execute if score @s game.player.active_level matches 4 as @n[type=minecraft:warden,scores={game.warden.active_level=4},distance=..50] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 4 as @n[type=minecraft:warden,scores={game.warden.active_level=4},distance=..100] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 4 as @n[type=minecraft:warden,scores={game.warden.active_level=4},distance=..200] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 4 as @n[type=minecraft:warden,scores={game.warden.active_level=4},distance=..300] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness

execute if score @s game.player.active_level matches 2 as @n[type=minecraft:warden,scores={game.warden.active_level=2},distance=..50] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 2 as @n[type=minecraft:warden,scores={game.warden.active_level=2},distance=..100] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 2 as @n[type=minecraft:warden,scores={game.warden.active_level=2},distance=..200] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness

execute if score @s game.player.active_level matches 1 as @n[type=minecraft:warden,scores={game.warden.active_level=1},distance=..50] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 1 as @n[type=minecraft:warden,scores={game.warden.active_level=1},distance=..100] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
execute if score @s game.player.active_level matches 1 as @n[type=minecraft:warden,scores={game.warden.active_level=1},distance=..200] run return run scoreboard players operation @s game.warden.awareness += #add game.warden.awareness
