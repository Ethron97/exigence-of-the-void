# Migrate room node to card shop
# Called from limbo room update

## CONSTRAINTS
#   AS room node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3) Migrate from limbo to card shop

# Migrate room node (room type: limbo -> ember shop)
function exigence:room/limbo/migrate_room_to_shop

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Copy info from node to card shop (save as inputs)
scoreboard players operation #shop.difficulty ember_shop = @s hub.room.difficulty
scoreboard players operation #shop.bonus_slots ember_shop = @s hub.room.bonus_slots
scoreboard players operation #shop.refresh_modifier ember_shop = @s hub.room.refresh_modifier
# ...

# Migrate players
#   Also loads shop (as first player)
execute as @a[scores={hub.player.room_id=1..}] if score @s hub.player.room_id = #compare hub.room.room_id run function exigence:hub/ember_shop/access/enter
