# If player has chrysopoeia, give coin instead
execute if data storage exigence:dungeon {is_active:1} if score Chrysopoeia Modifiers matches 1 run loot give @s loot exigence:coin
execute if data storage exigence:dungeon {is_active:1} if score Chrysopoeia Modifiers matches 1 run scoreboard players add @s t_coinpickup_chrysopoeia 1
execute if data storage exigence:dungeon {is_active:1} if score Chrysopoeia Modifiers matches 1 run scoreboard players add @s cr_coinpickup_chrysopoeia 1
execute if score Chrysopoeia Modifiers matches 0 run loot give @s loot exigence:ember/ember
