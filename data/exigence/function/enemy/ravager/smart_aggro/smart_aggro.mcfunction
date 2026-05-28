# Aggro ravager, but only after tping them far way so that the stupid reinforcement bug doesn't happen

## CONSTRAINTS
#   AS/AT ravager

#====================================================================================================

execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3 Enemy) Smart aggro

# Copy pos to custom data
data modify entity @s data.custom_data.x set from entity @s Pos[0]
data modify entity @s data.custom_data.y set from entity @s Pos[1]
data modify entity @s data.custom_data.z set from entity @s Pos[2]
data modify entity @s data.custom_data.yaw set from entity @s Rotation[0]
data modify entity @s data.custom_data.pitch set from entity @s Rotation[1]

# Initialize aggroing state (essentially ticks until they return)
scoreboard players set @s game.ravager.aggro_status 100

# Copy ravager scoreboard from player
scoreboard players operation @s game.ravager.aggroing = @p[scores={dead=0},tag=ActivePlayer] game.player.player_number

# Teleport away
tp @s 520.0 0.0 536.0
