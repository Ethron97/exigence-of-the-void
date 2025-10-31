# Called by update_effect

## CONSTRAINTS
#   AS player

#================================================================================================

# Spellsling ENCHANTED BOOK bonus
execute if score et.FromSpellsling game.effect_temp matches 1 if score @s game.player.mod.enchanted_book matches 1 run scoreboard players add et.AddingTime game.effect_temp 1200

# Potion CATALYST bonus
execute if score et.FromPotion game.effect_temp matches 1 if score @s game.player.mod.catalyst matches 1.. run scoreboard players operation et.AddingTime game.effect_temp *= 2 number
execute if score et.FromPotion game.effect_temp matches 1 if score @s game.player.mod.catalyst matches 1.. run scoreboard players operation et.SetTime game.effect_temp *= 2 number
