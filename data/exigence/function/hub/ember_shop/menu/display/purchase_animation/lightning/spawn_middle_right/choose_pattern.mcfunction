# Choose which pattern to spawn randomly

## CONSTRAINTS
#   AT anchor

#====================================================================================================

function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/playsound

execute store result score random Random run random value 1..8
execute if score random Random matches 1 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_01_spawn
execute if score random Random matches 2 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_02_spawn
execute if score random Random matches 3 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_03_spawn
execute if score random Random matches 4 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_04_spawn
execute if score random Random matches 5 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_05_spawn
execute if score random Random matches 6 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_06_spawn
execute if score random Random matches 7 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_07_spawn
execute if score random Random matches 8 run return run function exigence:hub/ember_shop/menu/display/purchase_animation/lightning/spawn_middle_right/lightning_08_spawn
