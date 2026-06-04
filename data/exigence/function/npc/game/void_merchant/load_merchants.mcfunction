# Load void merchants
#   Called by load sequence

## CONSTRAINTS
#   IN minecraft:overworld
#   AT location (abitrary)
#   difficulty = 3..

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Load void merchant(s)

# Randomize shop
#   OUTPUTS: STORAGE exigence:void_shop selected[]
function exigence:menu/void_menu/randomize_shop

# Spawn new void merchants
function exigence:npc/game/void_merchant/spawn {block:'minecraft:ender_chest'}
execute if score mod.void_merchants game.modifiers matches 2.. run function exigence:npc/game/void_merchant/spawn {block:'minecraft:chest'}
# Void clone is legendary now, so this shouldn't go past 2
#execute if score mod.void_merchants game.modifiers matches 3.. run function exigence:npc/game/void_merchant/spawn {block:'minecraft:copper_chest'}
#execute if score mod.void_merchants game.modifiers matches 4.. run function exigence:npc/game/void_merchant/spawn {block:'minecraft:barrel'}
