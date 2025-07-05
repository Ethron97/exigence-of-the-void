# Called from load_modifiers_b

## CONSTRAINTS
#   AS Player wearing a chestplate

#==================================================================================================================

## ====================== CHESTPLATES ======================
# Resource
execute if predicate exigence:equipment/chestplate/get_all run function exigence:resources/try_generate {green:1,red:1,aqua:1}
execute if predicate exigence:equipment/chestplate/get_green run function exigence:resources/try_generate {green:3,red:0,aqua:0}
execute if predicate exigence:equipment/chestplate/get_red run function exigence:resources/try_generate {green:0,red:3,aqua:0}
execute if predicate exigence:equipment/chestplate/get_aqua run function exigence:resources/try_generate {green:0,red:0,aqua:3}

# Invisibility
execute if predicate exigence:equipment/chestplate/invis_a run scoreboard players set @s mod_PhantomScales 1
execute if predicate exigence:equipment/chestplate/invis_b run scoreboard players set @s mod_PhantomScales 2
execute if predicate exigence:equipment/chestplate/invis_c run scoreboard players set @s mod_PhantomScales 3
execute if predicate exigence:equipment/chestplate/invis_d run scoreboard players set @s mod_PhantomScales 4
execute if predicate exigence:equipment/chestplate/invis_e run scoreboard players set @s mod_PhantomScales 5
execute if predicate exigence:equipment/chestplate/invis_f run scoreboard players set @s mod_PhantomScales 6
execute if predicate exigence:equipment/chestplate/invis_g run scoreboard players set @s mod_PhantomScales 7

# Regeneration
execute if predicate exigence:equipment/chestplate/regen_a run scoreboard players set @s mod_RegenMantle 1
execute if predicate exigence:equipment/chestplate/regen_b run scoreboard players set @s mod_RegenMantle 2
execute if predicate exigence:equipment/chestplate/regen_c run scoreboard players set @s mod_RegenMantle 3
execute if predicate exigence:equipment/chestplate/regen_d run scoreboard players set @s mod_RegenMantle 4
execute if predicate exigence:equipment/chestplate/regen_e run scoreboard players set @s mod_RegenMantle 5
execute if predicate exigence:equipment/chestplate/regen_f run scoreboard players set @s mod_RegenMantle 6
execute if predicate exigence:equipment/chestplate/regen_g run scoreboard players set @s mod_RegenMantle 7

# Shield
execute if predicate exigence:equipment/chestplate/shield_a run scoreboard players set @s mod_SunPlate 1
execute if predicate exigence:equipment/chestplate/shield_b run scoreboard players set @s mod_SunPlate 2
execute if predicate exigence:equipment/chestplate/shield_c run scoreboard players set @s mod_SunPlate 3
execute if predicate exigence:equipment/chestplate/shield_d run scoreboard players set @s mod_SunPlate 4
execute if predicate exigence:equipment/chestplate/shield_e run scoreboard players set @s mod_SunPlate 5
