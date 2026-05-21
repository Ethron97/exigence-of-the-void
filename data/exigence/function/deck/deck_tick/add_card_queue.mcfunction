# Add to card queue

#====================================================================================================

execute if score toggle.deck debug matches 1 if score debug.level debug matches 3.. run say (D3) Add to card queue

scoreboard players add card.queue game.dungeon.temp 1
scoreboard players operation card.draw.cooldown tick_counter = #CardDrawCooldownLimit tick_counter

# If EXIGENCE card, -3..7
execute store result score #random Random run random value 3..7
scoreboard players operation #random Random *= mod.exigence game.modifiers
scoreboard players operation #random Random *= 20 number
scoreboard players operation card.draw.cooldown tick_counter -= #random Random

# If TRANQUILITY card, +3..7
execute store result score #random Random run random value 3..7
scoreboard players operation #random Random *= mod.tranquility game.modifiers
scoreboard players operation #random Random *= 20 number
scoreboard players operation card.draw.cooldown tick_counter += #random Random

# Save new cooldown as "max" for bar updates
scoreboard players operation card.draw.cooldown_max tick_counter = card.draw.cooldown tick_counter