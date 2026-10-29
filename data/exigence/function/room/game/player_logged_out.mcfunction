# Called from profile/../player_logged_out
#   Only if door state > 0. If 0, we don't care.
#   Only calls if player logged out WHILE NODE WAS IN GAME MODE

## CONSTRAINTS
#   AS player node

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 2.. run say (D2) Player logged out [game]

# Lower player count so it knows to end (in coop)
scoreboard players remove game.player_count game.state 1

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Add queued functions to player node(s)
scoreboard players add @s player.node.queue 1
scoreboard players add @s player.node.queue.logout_game 1

# Trigger check for cleaning up NPC (if a villager being carried exists)
execute in minecraft:overworld if entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:villager,tag=Carried,limit=1] run function exigence:game/other/player_logged_out_while_carrying
