# If player has chrysopoeia, give coin instead
execute if score game.is_active game.state matches 1 if score mod.chrysopoeia game.modifiers matches 1 run loot give @s loot exigence:coin
execute if score game.is_active game.state matches 1 if score mod.chrysopoeia game.modifiers matches 1 run scoreboard players add @s profile.data.treasure.cr.coinpickup_chrysopoeia 1
execute if score mod.chrysopoeia game.modifiers matches 0 run loot give @s loot exigence:ember/ember
