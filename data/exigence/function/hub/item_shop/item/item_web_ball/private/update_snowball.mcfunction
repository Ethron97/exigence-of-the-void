# Update a specific snowball marker pair
#   Called from ./tick_loop

## CONSTRAINTS
#   AS/AT snowball marker

#=============================================================================================================

# Copy this marker's snowballid
scoreboard players operation #compare game.entity.snowball.id = @s game.entity.snowball.id

# Should explode? Only if no matching snowball
scoreboard players set #explode game.entity.snowball.id 1
execute as @e[distance=..1000,type=minecraft:snowball] if score @s game.entity.snowball.id = #compare game.entity.snowball.id run scoreboard players set #explode game.entity.snowball.id 0
execute if score #explode game.entity.snowball.id matches 1 positioned ~ ~1 ~ run function exigence:hub/item_shop/item/item_web_ball/private/explode
