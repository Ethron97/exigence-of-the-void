# Call before updating room node type code

## CONSTRAINTS
#   AS room node (game)

#====================================================================================================

# Difficulty?
scoreboard players operation @s hub.room.difficulty = game.difficulty game.state

# Bonus cards
scoreboard players operation @s hub.room.bonus_slots = mod.bonus_cards game.modifiers

# Refresh cost modifier
#scoreboard players operation @s hub.room.refresh_modifier = 
