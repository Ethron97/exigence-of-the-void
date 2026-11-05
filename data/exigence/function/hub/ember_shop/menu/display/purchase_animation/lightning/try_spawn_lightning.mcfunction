# Pick a random anchor and spawn a random pattern there

# Iterate, keep trying until we find an open anchor

## CONSTRAINTS
#   IN exigence:hub
#   Make sure we don't try to call this more than 5 times within lifespan of a lightning

#====================================================================================================

execute store result score randomB Random run random value 1..6
execute if score randomB Random matches 1 positioned 52.5 212.5 -2.0 unless entity @e[type=minecraft:block_display,distance=..0.1] \
run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_bottom_left/choose_pattern
execute if score randomB Random matches 2 positioned 52.5 213.5 -2.0 unless entity @e[type=minecraft:block_display,distance=..0.1] \
run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_left/choose_pattern
execute if score randomB Random matches 3 positioned 52.5 214.5 -2.0 unless entity @e[type=minecraft:block_display,distance=..0.1] \
run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_top_left/choose_pattern
execute if score randomB Random matches 4 positioned 52.5 212.5 3.0 unless entity @e[type=minecraft:block_display,distance=..0.1] \
run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_bottom_right/choose_pattern
execute if score randomB Random matches 5 positioned 52.5 213.5 3.0 unless entity @e[type=minecraft:block_display,distance=..0.1] \
run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/choose_pattern
execute if score randomB Random matches 6 positioned 52.5 214.5 3.0 unless entity @e[type=minecraft:block_display,distance=..0.1] \
run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_top_right/choose_pattern
#----------------------------------------------------------------------------------------------------

# Individual testing
#execute positioned 52.5 212.5 -2.0 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_bottom_left/choose_pattern
#execute positioned 52.5 213.5 -2.0 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_left/choose_pattern
#execute positioned 52.5 214.5 -2.0 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_top_left/choose_pattern
#execute positioned 52.5 212.5 3.0 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_top_right/choose_pattern
#execute positioned 52.5 213.5 3.0 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_top_right/choose_pattern
#execute positioned 52.5 214.5 3.0 run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_top_right/choose_pattern

# Iterate
function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/try_spawn_lightning
