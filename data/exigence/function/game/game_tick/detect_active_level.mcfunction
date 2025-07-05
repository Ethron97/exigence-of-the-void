# Called by game_tick

#==========================================================================================================

# Store old active level
scoreboard players operation #ActiveLevelOld DungeonRun = ActiveLevel DungeonRun

# Update player's active levels
execute as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/update_active_level



## DUNGEON LEVEL LOGIC
# If echo has not been retrieved, active dungeon level = lowest active level with a living player
#   This is to incentivize players to ascend together instead of leaving someone behind to loot or something
execute if data storage exigence:dungeon {all_echos_found:0} if entity @a[tag=ActivePlayer,scores={dead=0}] run scoreboard players set ActiveLevel DungeonRun 10 
execute if data storage exigence:dungeon {all_echos_found:0} as @a[tag=ActivePlayer,scores={dead=0}] run scoreboard players operation ActiveLevel DungeonRun < @s ActiveLevel

# If echo has been retrieved, active dungeon level = active level of player with the echo (or that last had the echo)
execute if data storage exigence:dungeon {all_echos_found:1} as @a[tag=ActivePlayer,scores={EchoFragments=1}] run scoreboard players operation ActiveLevel DungeonRun = @s ActiveLevel


## LEVEL CHANGE LOGIC
#execute if score #ActiveLevelOld DungeonRun < ActiveLevel DungeonRun run say Level up!
#execute if score #ActiveLevelOld DungeonRun > ActiveLevel DungeonRun run say Level down!
execute if score #ActiveLevelOld DungeonRun > ActiveLevel DungeonRun run function exigence:enemy/redistribute_ravagers
#execute if score #ActiveLevelOld DungeonRun > ActiveLevel DungeonRun if data storage exigence:dungeon {all_echos_found:1} as @a[tag=ActivePlayer] unless score @s s_disableReturnCompass matches 1 run function exigence:player/give/return_compass

# Ascend level only goes up
scoreboard players operation #AscendLevelOld DungeonRun = AscendLevel DungeonRun
scoreboard players operation AscendLevel DungeonRun > ActiveLevel DungeonRun

execute if score #AscendLevelOld DungeonRun < AscendLevel DungeonRun run function exigence:game/ascend


# If not inside any active level, give wither I

# If inside any active level, clear wither I
