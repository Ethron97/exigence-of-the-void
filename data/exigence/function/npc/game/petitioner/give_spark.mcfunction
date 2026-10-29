# Player provides proof to Petitioner

## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result score random Random run random value 1..3
execute if score random Random matches 1 run tellraw @s [{text:"[",color:"white"},{text:"Petitioner",color:"light_purple"},{text:"] Persuasive... but it could be a lie.",color:"white"}]
execute if score random Random matches 2 run tellraw @s [{text:"[",color:"white"},{text:"Petitioner",color:"light_purple"},{text:"] Impressive... but not enough.",color:"white"}]
execute if score random Random matches 3 run tellraw @s [{text:"[",color:"white"},{text:"Petitioner",color:"light_purple"},{text:"] Illuminating... but I doubt you will find more.",color:"white"}]

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
