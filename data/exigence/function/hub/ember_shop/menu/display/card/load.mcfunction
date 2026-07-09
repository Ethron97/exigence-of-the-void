# Load 

## CONSTRAINTS
#   AT ember shop menu

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load card shop

# Playsound
playsound minecraft:block.ender_chest.open ui @a ~ ~ ~ 1 1

# Summon refresh button

# Summon rarity selection buttons
# TODO create only if <= input difficulty
execute positioned ~ ~1.25 ~0.4 run function exigence:hub/ember_shop/menu/display/card/load/summon_rarity_selector_1
execute positioned ~ ~1.25 ~0.7 run function exigence:hub/ember_shop/menu/display/card/load/summon_rarity_selector_2
execute positioned ~ ~1.25 ~1.0 run function exigence:hub/ember_shop/menu/display/card/load/summon_rarity_selector_3
execute positioned ~ ~1.25 ~1.3 run function exigence:hub/ember_shop/menu/display/card/load/summon_rarity_selector_4

# Initialize highest rarity button as selected
#   Displays first card set and sets refresh cost
