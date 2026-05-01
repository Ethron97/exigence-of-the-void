# Player provides proof to Petitioner

## CONSTRAINTS
#   AS player

#====================================================================================================

execute as @e[type=villager,name=Petitioner] run say Persuasive... bring me more.

# Clear sparks (store amount)
execute store result score #temp Temp run clear @s glow_ink_sac

# Add amount to candles (from amount stored)
scoreboard players operation game.puzzle_candles game.dungeon += #temp Temp

# Update candles
function exigence:altar/puzzle/update_candles

# If 50.. are now lit, puzzle complete
#execute if score game.puzzle_candles game.dungeon >= 50 number run advancement grant @a[tag=ActivePlayer,advancements={exigence:story/light_altars=false}] only exigence:story/light_altars
execute if score game.puzzle_candles game.dungeon >= 50 number as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'light_altars'}
execute if score game.puzzle_candles game.dungeon >= 50 number run scoreboard players set npc.petitioner game.dialogue 2
