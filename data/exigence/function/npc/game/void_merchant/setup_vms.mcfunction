# Randomize shop
function exigence:menu/void_menu/randomize_shop

# Spawn new void merchants
function exigence:npc/game/void_merchant/spawn {block:'minecraft:ender_chest'}
execute if score VoidMerchants Modifiers matches 2.. run function exigence:npc/game/void_merchant/spawn {block:'minecraft:chest'}
execute if score VoidMerchants Modifiers matches 3.. run function exigence:npc/game/void_merchant/spawn {block:'minecraft:barrel'}
execute if score VoidMerchants Modifiers matches 4.. run function exigence:npc/game/void_merchant/spawn {block:'minecraft:cauldron'}

# Setup data for void merchants
execute as @e[type=enderman,tag=VoidMerchant] run function exigence:npc/game/void_merchant/setup_vm
