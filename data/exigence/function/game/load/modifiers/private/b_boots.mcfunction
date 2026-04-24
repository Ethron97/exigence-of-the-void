# Called from load_modifiers_b

## CONSTRAINTS
#   AS Player wearing boots

#====================================================================================================

# Loot Boots
execute if predicate exigence:equipment/boots/loot_a run return run scoreboard players set @s game.player.mod.loot_boots 1
execute if predicate exigence:equipment/boots/loot_b run return run scoreboard players set @s game.player.mod.loot_boots 2
execute if predicate exigence:equipment/boots/loot_c run return run scoreboard players set @s game.player.mod.loot_boots 3
execute if predicate exigence:equipment/boots/loot_d run return run scoreboard players set @s game.player.mod.loot_boots 4
execute if predicate exigence:equipment/boots/loot_e run return run scoreboard players set @s game.player.mod.loot_boots 5
execute if predicate exigence:equipment/boots/loot_f run return run scoreboard players set @s game.player.mod.loot_boots 6

# Panic boots
execute if predicate exigence:equipment/boots/panic_a run return run scoreboard players set @s game.player.mod.panic_boots 1
execute if predicate exigence:equipment/boots/panic_b run return run scoreboard players set @s game.player.mod.panic_boots 2
execute if predicate exigence:equipment/boots/panic_c run return run scoreboard players set @s game.player.mod.panic_boots 3
execute if predicate exigence:equipment/boots/panic_d run return run scoreboard players set @s game.player.mod.panic_boots 4
execute if predicate exigence:equipment/boots/panic_e run return run scoreboard players set @s game.player.mod.panic_boots 5
execute if predicate exigence:equipment/boots/panic_f run return run scoreboard players set @s game.player.mod.panic_boots 6

# Sculk boots
execute if predicate exigence:equipment/boots/sculk_a run return run scoreboard players set @s game.player.mod.sculk_boots 1
execute if predicate exigence:equipment/boots/sculk_b run return run scoreboard players set @s game.player.mod.sculk_boots 2
execute if predicate exigence:equipment/boots/sculk_c run return run scoreboard players set @s game.player.mod.sculk_boots 3
# Sculk boots
execute if predicate exigence:equipment/boots/sculk run return run scoreboard players set @s game.player.mod.sculk_boots -1
