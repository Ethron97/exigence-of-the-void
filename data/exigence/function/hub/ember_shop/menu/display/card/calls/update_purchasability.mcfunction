# Update cost display color/cost

## CONSTRAINTS
#   AS card display

## INPUT
#   WITH entity @s item.components."minecraft:custom_data"

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Update purchasability

# Can afford?
execute if score shop.embers_to_spend ember_shop >= @s ember_shop.cost run function exigence:hub/ember_shop/menu/display/card/calls/private/can_afford
execute if score shop.embers_to_spend ember_shop < @s ember_shop.cost run function exigence:hub/ember_shop/menu/display/card/calls/private/cant_afford

# Add local tag
tag @s add UpdatingPurchasability

# update
$execute at @s as @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=CostDisplay,distance=..1] \
run function exigence:hub/ember_shop/menu/display/card/calls/cost_display/update \
with entity @n[type=minecraft:item_display,tag=CardDisplay,tag=UpdatingPurchasability,distance=..1] item.components."minecraft:custom_data"

# Remove local tag
tag @s remove UpdatingPurchasability