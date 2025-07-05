# Called by shop load, refreshes data of which items are unlocked

## CALLS
#   Shop load
#   Whenever an item is researched

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Reset array
data modify storage exigence:shop shop_unlocked set value [] 
data modify storage exigence:shop one_time_purchased set value [] 

# If player has advancement, add to array for later lookup

## ====================== ONE TIME PURCHASED ======================
execute if entity @s[advancements={exigence:unlockables/one_time/one_time_food_a=true}] run data modify storage exigence:shop one_time_purchased append value one_time_food_a
execute if entity @s[advancements={exigence:unlockables/one_time/one_time_bag_a=true}] run data modify storage exigence:shop one_time_purchased append value one_time_bag_a
execute if entity @s[advancements={exigence:unlockables/one_time/one_time_potion_a=true}] run data modify storage exigence:shop one_time_purchased append value one_time_potion_a



## ====================== CONSUMABLES ======================
execute if entity @s[advancements={exigence:unlockables/shop_unlock_dust_of_appearance=true}] run data modify storage exigence:shop shop_unlocked append value dust_of_appearance
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_cookie=true}] run data modify storage exigence:shop shop_unlocked append value food_cookie
execute if entity @s[advancements={exigence:unlockables/shop_unlock_wind_charge=true}] run data modify storage exigence:shop shop_unlocked append value wind_charge
execute if entity @s[advancements={exigence:unlockables/shop_unlock_dust_heighten=true}] run data modify storage exigence:shop shop_unlocked append value dust_heighten
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chorus_fruit=true}] run data modify storage exigence:shop shop_unlocked append value chorus_fruit
execute if entity @s[advancements={exigence:unlockables/shop_unlock_item_magma_cream=true}] run data modify storage exigence:shop shop_unlocked append value item_magma_cream
execute if entity @s[advancements={exigence:unlockables/shop_unlock_item_web_ball=true}] run data modify storage exigence:shop shop_unlocked append value item_web_ball
execute if entity @s[advancements={exigence:unlockables/shop_unlock_resonance_crystal=true}] run data modify storage exigence:shop shop_unlocked append value resonance_crystal
execute if entity @s[advancements={exigence:unlockables/shop_unlock_glow_ink_sac=true}] run data modify storage exigence:shop shop_unlocked append value glow_ink_sac
execute if entity @s[advancements={exigence:unlockables/shop_unlock_item_wind_line=true}] run data modify storage exigence:shop shop_unlocked append value item_wind_line
execute if entity @s[advancements={exigence:unlockables/shop_unlock_item_phantom_membrane=true}] run data modify storage exigence:shop shop_unlocked append value item_phantom_membrane

# PERMANENT
execute if entity @s[advancements={exigence:unlockables/shop_unlock_one_time_bag_a=true}] run data modify storage exigence:shop shop_unlocked append value one_time_bag_a



## ====================== FOOD ======================
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_a=true}] run data modify storage exigence:shop shop_unlocked append value food_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_b=true}] run data modify storage exigence:shop shop_unlocked append value food_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_c=true}] run data modify storage exigence:shop shop_unlocked append value food_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_d=true}] run data modify storage exigence:shop shop_unlocked append value food_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_e=true}] run data modify storage exigence:shop shop_unlocked append value food_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_f=true}] run data modify storage exigence:shop shop_unlocked append value food_f

execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_beast=true}] run data modify storage exigence:shop shop_unlocked append value food_beast
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_glow=true}] run data modify storage exigence:shop shop_unlocked append value food_glow
execute if entity @s[advancements={exigence:unlockables/shop_unlock_food_honey=true}] run data modify storage exigence:shop shop_unlocked append value food_honey

# PERMANENT
execute if entity @s[advancements={exigence:unlockables/shop_unlock_one_time_food_a=true}] run data modify storage exigence:shop shop_unlocked append value one_time_food_a



## ====================== POTIONS ======================
# SPEED POTIONS
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_1_a=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_1_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_1_b=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_1_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_1_c=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_1_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_1_d=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_1_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_1_e=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_1_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_1_f=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_1_f

execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_2=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_2
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_3=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_3
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_speed_4=true}] run data modify storage exigence:shop shop_unlocked append value potion_speed_4

# HEALTH POTIONS
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_health_a=true}] run data modify storage exigence:shop shop_unlocked append value potion_health_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_health_b=true}] run data modify storage exigence:shop shop_unlocked append value potion_health_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_health_c=true}] run data modify storage exigence:shop shop_unlocked append value potion_health_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_health_d=true}] run data modify storage exigence:shop shop_unlocked append value potion_health_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_health_e=true}] run data modify storage exigence:shop shop_unlocked append value potion_health_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_health_f=true}] run data modify storage exigence:shop shop_unlocked append value potion_health_f
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_health_g=true}] run data modify storage exigence:shop shop_unlocked append value potion_health_g

# JUMP POTIONS
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_jump_2_a=true}] run data modify storage exigence:shop shop_unlocked append value potion_jump_2_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_jump_2_b=true}] run data modify storage exigence:shop shop_unlocked append value potion_jump_2_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_jump_2_c=true}] run data modify storage exigence:shop shop_unlocked append value potion_jump_2_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_jump_2_d=true}] run data modify storage exigence:shop shop_unlocked append value potion_jump_2_d

execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_jump_4=true}] run data modify storage exigence:shop shop_unlocked append value potion_jump_4
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_jump_6=true}] run data modify storage exigence:shop shop_unlocked append value potion_jump_6
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_jump_8=true}] run data modify storage exigence:shop shop_unlocked append value potion_jump_8

# SLOW POTIONS
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_slow_a=true}] run data modify storage exigence:shop shop_unlocked append value potion_slow_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_slow_b=true}] run data modify storage exigence:shop shop_unlocked append value potion_slow_b

# GLOW POTIONS
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_glow_a=true}] run data modify storage exigence:shop shop_unlocked append value potion_glow_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_glow_b=true}] run data modify storage exigence:shop shop_unlocked append value potion_glow_b

# INVISIBILITY
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_invis_a=true}] run data modify storage exigence:shop shop_unlocked append value potion_invis_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_potion_invis_b=true}] run data modify storage exigence:shop shop_unlocked append value potion_invis_b

# PERMANENT
execute if entity @s[advancements={exigence:unlockables/shop_unlock_one_time_potion_a=true}] run data modify storage exigence:shop shop_unlocked append value one_time_potion_a



## ====================== BOOTS ======================
# Misc boots
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_snow=true}] run data modify storage exigence:shop shop_unlocked append value boots_snow
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_depth_a=true}] run data modify storage exigence:shop shop_unlocked append value boots_depth_a

# Feather Fall
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_feather_a=true}] run data modify storage exigence:shop shop_unlocked append value boots_feather_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_feather_b=true}] run data modify storage exigence:shop shop_unlocked append value boots_feather_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_feather_c=true}] run data modify storage exigence:shop shop_unlocked append value boots_feather_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_feather_d=true}] run data modify storage exigence:shop shop_unlocked append value boots_feather_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_feather_e=true}] run data modify storage exigence:shop shop_unlocked append value boots_feather_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_feather_f=true}] run data modify storage exigence:shop shop_unlocked append value boots_feather_f

# Loot Boots
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_loot_a=true}] run data modify storage exigence:shop shop_unlocked append value boots_loot_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_loot_b=true}] run data modify storage exigence:shop shop_unlocked append value boots_loot_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_loot_c=true}] run data modify storage exigence:shop shop_unlocked append value boots_loot_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_loot_d=true}] run data modify storage exigence:shop shop_unlocked append value boots_loot_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_loot_e=true}] run data modify storage exigence:shop shop_unlocked append value boots_loot_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_loot_f=true}] run data modify storage exigence:shop shop_unlocked append value boots_loot_f

# Panic Boots
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_panic_a=true}] run data modify storage exigence:shop shop_unlocked append value boots_panic_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_panic_b=true}] run data modify storage exigence:shop shop_unlocked append value boots_panic_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_panic_c=true}] run data modify storage exigence:shop shop_unlocked append value boots_panic_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_panic_d=true}] run data modify storage exigence:shop shop_unlocked append value boots_panic_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_panic_e=true}] run data modify storage exigence:shop shop_unlocked append value boots_panic_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_panic_f=true}] run data modify storage exigence:shop shop_unlocked append value boots_panic_f

# Sculk Boots
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_sculk_a=true}] run data modify storage exigence:shop shop_unlocked append value boots_sculk_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_sculk_b=true}] run data modify storage exigence:shop shop_unlocked append value boots_sculk_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_boots_sculk_c=true}] run data modify storage exigence:shop shop_unlocked append value boots_sculk_c



## ====================== LEGGINGS ======================
# Deep Pockets
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_coin_a=true}] run data modify storage exigence:shop shop_unlocked append value pants_coin_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_coin_b=true}] run data modify storage exigence:shop shop_unlocked append value pants_coin_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_coin_c=true}] run data modify storage exigence:shop shop_unlocked append value pants_coin_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_coin_d=true}] run data modify storage exigence:shop shop_unlocked append value pants_coin_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_coin_e=true}] run data modify storage exigence:shop shop_unlocked append value pants_coin_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_coin_f=true}] run data modify storage exigence:shop shop_unlocked append value pants_coin_f

# Padded Pockets
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_sherd_a=true}] run data modify storage exigence:shop shop_unlocked append value pants_sherd_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_sherd_b=true}] run data modify storage exigence:shop shop_unlocked append value pants_sherd_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_sherd_c=true}] run data modify storage exigence:shop shop_unlocked append value pants_sherd_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_sherd_d=true}] run data modify storage exigence:shop shop_unlocked append value pants_sherd_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_sherd_e=true}] run data modify storage exigence:shop shop_unlocked append value pants_sherd_e

# Secure Pockets
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_glint_a=true}] run data modify storage exigence:shop shop_unlocked append value pants_glint_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_glint_b=true}] run data modify storage exigence:shop shop_unlocked append value pants_glint_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_glint_c=true}] run data modify storage exigence:shop shop_unlocked append value pants_glint_c

# Extra Pockets
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_pocket_a=true}] run data modify storage exigence:shop shop_unlocked append value pants_pocket_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_pocket_b=true}] run data modify storage exigence:shop shop_unlocked append value pants_pocket_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_pocket_c=true}] run data modify storage exigence:shop shop_unlocked append value pants_pocket_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_pocket_d=true}] run data modify storage exigence:shop shop_unlocked append value pants_pocket_d

execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_utility_a=true}] run data modify storage exigence:shop shop_unlocked append value pants_utility_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_utility_b=true}] run data modify storage exigence:shop shop_unlocked append value pants_utility_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_utility_c=true}] run data modify storage exigence:shop shop_unlocked append value pants_utility_c

# Vault Pocket
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_vault_a=true}] run data modify storage exigence:shop shop_unlocked append value pants_vault_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_pants_vault_b=true}] run data modify storage exigence:shop shop_unlocked append value pants_vault_b



## ====================== CHESTPLATES ======================
# NEW

# Get starting resources
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_get_all=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_get_all
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_get_green=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_get_green
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_get_red=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_get_red
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_get_aqua=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_get_aqua

# Regeneration
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_regen_a=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_regen_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_regen_b=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_regen_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_regen_c=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_regen_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_regen_d=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_regen_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_regen_e=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_regen_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_regen_f=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_regen_f
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_regen_g=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_regen_g

# Invisibility
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_invis_a=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_invis_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_invis_b=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_invis_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_invis_c=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_invis_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_invis_d=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_invis_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_invis_e=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_invis_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_invis_f=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_invis_f
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_invis_g=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_invis_g

# Shield 
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_shield_a=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_shield_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_shield_b=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_shield_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_shield_c=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_shield_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_shield_d=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_shield_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chestplate_shield_e=true}] run data modify storage exigence:shop shop_unlocked append value chestplate_shield_e


## ====================== CHESTPLATES ======================
# OLD
# Green Core
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_green_a=true}] run data modify storage exigence:shop shop_unlocked append value chest_green_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_green_b=true}] run data modify storage exigence:shop shop_unlocked append value chest_green_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_green_c=true}] run data modify storage exigence:shop shop_unlocked append value chest_green_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_green_d=true}] run data modify storage exigence:shop shop_unlocked append value chest_green_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_green_e=true}] run data modify storage exigence:shop shop_unlocked append value chest_green_e

# Red Core
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_red_a=true}] run data modify storage exigence:shop shop_unlocked append value chest_red_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_red_b=true}] run data modify storage exigence:shop shop_unlocked append value chest_red_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_red_c=true}] run data modify storage exigence:shop shop_unlocked append value chest_red_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_red_d=true}] run data modify storage exigence:shop shop_unlocked append value chest_red_d

# Aqua Core
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_aqua_a=true}] run data modify storage exigence:shop shop_unlocked append value chest_aqua_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_aqua_b=true}] run data modify storage exigence:shop shop_unlocked append value chest_aqua_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_aqua_c=true}] run data modify storage exigence:shop shop_unlocked append value chest_aqua_c

# Teal Core
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_teal_a=true}] run data modify storage exigence:shop shop_unlocked append value chest_teal_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_teal_b=true}] run data modify storage exigence:shop shop_unlocked append value chest_teal_b

# Purple Core
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_purple_a=true}] run data modify storage exigence:shop shop_unlocked append value chest_purple_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_purple_b=true}] run data modify storage exigence:shop shop_unlocked append value chest_purple_b

# White Core
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_white_a=true}] run data modify storage exigence:shop shop_unlocked append value chest_white_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_chest_white_b=true}] run data modify storage exigence:shop shop_unlocked append value chest_white_b



## ====================== HELMETS ======================
# Berry Vision
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_berry_a=true}] run data modify storage exigence:shop shop_unlocked append value helmet_berry_a

# Glimmer Vision
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_glimmer_a=true}] run data modify storage exigence:shop shop_unlocked append value helmet_glimmer_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_glimmer_b=true}] run data modify storage exigence:shop shop_unlocked append value helmet_glimmer_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_glimmer_c=true}] run data modify storage exigence:shop shop_unlocked append value helmet_glimmer_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_glimmer_d=true}] run data modify storage exigence:shop shop_unlocked append value helmet_glimmer_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_glimmer_e=true}] run data modify storage exigence:shop shop_unlocked append value helmet_glimmer_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_glimmer_f=true}] run data modify storage exigence:shop shop_unlocked append value helmet_glimmer_f
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_glimmer_g=true}] run data modify storage exigence:shop shop_unlocked append value helmet_glimmer_g

# Flicker Vision
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_flicker_a=true}] run data modify storage exigence:shop shop_unlocked append value helmet_flicker_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_flicker_b=true}] run data modify storage exigence:shop shop_unlocked append value helmet_flicker_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_flicker_c=true}] run data modify storage exigence:shop shop_unlocked append value helmet_flicker_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_flicker_d=true}] run data modify storage exigence:shop shop_unlocked append value helmet_flicker_d

# Lumninous (glimmer + flicker)
#execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_luminous_a=true}] run data modify storage exigence:shop shop_unlocked append value helmet_luminous_a
#execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_luminous_b=true}] run data modify storage exigence:shop shop_unlocked append value helmet_luminous_b

# Beast Vision
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_beast_a=true}] run data modify storage exigence:shop shop_unlocked append value helmet_beast_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_beast_b=true}] run data modify storage exigence:shop shop_unlocked append value helmet_beast_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_beast_c=true}] run data modify storage exigence:shop shop_unlocked append value helmet_beast_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_beast_d=true}] run data modify storage exigence:shop shop_unlocked append value helmet_beast_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_beast_e=true}] run data modify storage exigence:shop shop_unlocked append value helmet_beast_e
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_beast_f=true}] run data modify storage exigence:shop shop_unlocked append value helmet_beast_f
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_beast_g=true}] run data modify storage exigence:shop shop_unlocked append value helmet_beast_g

# Mirror Vision
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_mirror_a=true}] run data modify storage exigence:shop shop_unlocked append value helmet_mirror_a

# Detection Vision
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_detection_a=true}] run data modify storage exigence:shop shop_unlocked append value helmet_detection_a
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_detection_b=true}] run data modify storage exigence:shop shop_unlocked append value helmet_detection_b
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_detection_c=true}] run data modify storage exigence:shop shop_unlocked append value helmet_detection_c
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_detection_d=true}] run data modify storage exigence:shop shop_unlocked append value helmet_detection_d
execute if entity @s[advancements={exigence:unlockables/shop_unlock_helmet_detection_e=true}] run data modify storage exigence:shop shop_unlocked append value helmet_detection_e
