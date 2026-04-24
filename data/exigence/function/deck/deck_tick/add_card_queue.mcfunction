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
