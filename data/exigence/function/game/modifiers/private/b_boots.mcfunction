# Called from load_modifiers_b

## CONSTRAINTS
#   AS Player wearing boots

#==================================================================================================================

## ====================== BOOTS ======================
# Loot Boots
execute if predicate exigence:equipment/boots/loot_a run scoreboard players set @s mod_LootBoots 1
execute if predicate exigence:equipment/boots/loot_b run scoreboard players set @s mod_LootBoots 2
execute if predicate exigence:equipment/boots/loot_c run scoreboard players set @s mod_LootBoots 3
execute if predicate exigence:equipment/boots/loot_d run scoreboard players set @s mod_LootBoots 4
execute if predicate exigence:equipment/boots/loot_e run scoreboard players set @s mod_LootBoots 5
execute if predicate exigence:equipment/boots/loot_f run scoreboard players set @s mod_LootBoots 6

# Panic boots
execute if predicate exigence:equipment/boots/panic_a run scoreboard players set @s mod_PanicBoots 1
execute if predicate exigence:equipment/boots/panic_b run scoreboard players set @s mod_PanicBoots 2
execute if predicate exigence:equipment/boots/panic_c run scoreboard players set @s mod_PanicBoots 3
execute if predicate exigence:equipment/boots/panic_d run scoreboard players set @s mod_PanicBoots 4
execute if predicate exigence:equipment/boots/panic_e run scoreboard players set @s mod_PanicBoots 5
execute if predicate exigence:equipment/boots/panic_f run scoreboard players set @s mod_PanicBoots 6

# Sculk boots
execute if predicate exigence:equipment/boots/sculk_a run scoreboard players set @s mod_SculkBoots 1
execute if predicate exigence:equipment/boots/sculk_b run scoreboard players set @s mod_SculkBoots 2
execute if predicate exigence:equipment/boots/sculk_c run scoreboard players set @s mod_SculkBoots 3
# Sculk boots
execute if predicate exigence:equipment/boots/sculk run scoreboard players set @s mod_SculkBoots -1
