# Called by update_effect

## CONSTRAINTS
#   AS player

#================================================================================================

# Spellsling ENCHANTED BOOK bonus
execute if score FromSpellsling EffectTemp matches 1 if score @s mod_EnchantedBook matches 1 run scoreboard players add AddingTime EffectTemp 1200

# Potion CATALYST bonus
execute if score FromPotion EffectTemp matches 1 if score @s mod_Catalyst matches 1.. run scoreboard players operation AddingTime EffectTemp *= 2 number
execute if score FromPotion EffectTemp matches 1 if score @s mod_Catalyst matches 1.. run scoreboard players operation SetTime EffectTemp *= 2 number
