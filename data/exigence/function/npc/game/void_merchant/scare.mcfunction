# Called by void_menu_tick

## CONSTRAINTS
#   AS/AT Enderman when enemy gets too close

#=============================================================================================================

playsound minecraft:entity.enderman.scream ambient @a ~ ~ ~ 1 1
tellraw @p[tag=VoidShopping] [{text:"[Void Merchant]",color:"dark_purple"},{text:" I refuse to do business in the presence of beasts.",color:"gray"}]

# Teleport away
function exigence:npc/game/void_merchant/teleport
