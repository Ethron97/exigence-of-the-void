# Update a specific snowball marker pair
#   Called from ./tick_loop

## CONSTRAINTS
#   AS/AT snowball marker

#=============================================================================================================

# Copy this marker's snowballid
scoreboard players operation #compare SnowballID = @s SnowballID

# Should explode? Only if no matching snowball
scoreboard players set #explode SnowballID 1
execute as @e[type=snowball] if score @s SnowballID = #compare SnowballID run scoreboard players set #explode SnowballID 0
execute if score #explode SnowballID matches 1 positioned ~ ~1 ~ run function exigence:hub/item_shop/frame/item/item_web_ball/private/explode
