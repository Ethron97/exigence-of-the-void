scoreboard players add CardQueue DungeonRun 1
scoreboard players operation CardDrawCooldown TickCounter = #CardDrawCooldownLimit TickCounter

# If EXIGENCE card, -3..6
execute store result score random Random run random value 3..6
scoreboard players operation random Random *= Exigence Modifiers
scoreboard players operation random Random *= 20 number
scoreboard players operation CardDrawCooldown TickCounter -= random Random

# If TRANQUILITY card, +3..6
execute store result score random Random run random value 3..6
scoreboard players operation random Random *= Tranquility Modifiers
scoreboard players operation random Random *= 20 number
scoreboard players operation CardDrawCooldown TickCounter += random Random
