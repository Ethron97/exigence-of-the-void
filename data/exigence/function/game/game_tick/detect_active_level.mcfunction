# Called by game_tick
#   AFTER player tick

#====================================================================================================

# Store old active level
scoreboard players operation #active_level_old game.state = game.active_level game.state


## DUNGEON LEVEL LOGIC
# If echo has not been retrieved, active dungeon level = lowest active level with a living player
#   This is to incentivize players to ascend together instead of leaving someone behind to loot or something
execute if score game.all_echos_found game.state matches 0 if entity @a[scores={dead=0},tag=ActivePlayer] run scoreboard players set game.active_level game.state 10 
execute if score game.all_echos_found game.state matches 0 as @a[scores={dead=0},tag=ActivePlayer] run scoreboard players operation game.active_level game.state < @s game.player.active_level

# If echo has been retrieved, active dungeon level = active level of player with the echo (or that last had the echo)
execute if score game.all_echos_found game.state matches 1 as @a[scores={game.player.echo_fragments=1},tag=ActivePlayer] run scoreboard players operation game.active_level game.state = @s game.player.active_level


## LEVEL CHANGE LOGIC
#execute if score #active_level_old game.state < game.active_level game.state run say Level up!
#execute if score #active_level_old game.state > game.active_level game.state run say Level down!
execute if score #active_level_old game.state > game.active_level game.state run function exigence:enemy/redistribute_ravagers

# Ascend level only goes up
scoreboard players operation #ascend_level_old game.state = game.ascend_level game.state
scoreboard players operation game.ascend_level game.state > game.active_level game.state

execute if score #ascend_level_old game.state < game.ascend_level game.state run function exigence:game/ascend


# If not inside any active level, give wither I

# If inside any active level, clear wither I
