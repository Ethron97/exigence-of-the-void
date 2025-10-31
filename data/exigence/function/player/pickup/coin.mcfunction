# Called to finish picking up a coin and all that entails

## CONSTRAINTS
#   AS player

#================================================================================================================

# Add coin to their inventory
function exigence:player/give/coin

# If wearing gold boots (loot boots)
execute as @s[scores={game.player.mod.loot_boots=1..}] run function exigence:player/modifiers/loot_boots

# If Circulation is active, generate one Treasure
execute if entity @s[scores={game.player.effects.circulation=1..}] run function exigence:treasure/queue/add_to_queue {source:"circulation",amount:1}
# Stop existing sound (so they don't stack if coin stacks are enabled)
stopsound @s neutral minecraft:block.note_block.bell
# Play ding to indicate Circulation proced
execute at @s[scores={game.player.effects.circulation=1..}] run playsound minecraft:block.note_block.bell neutral @s
