# Call {ember_cost:#,rarity:#}
# Rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
# /function exigence:hub/ember_shop/summon_shop_node {ember_cost:#,rarity:#,void:0/1}

# Create a new node with tag "NewNode"
execute at @s as @s run function exigence:game/new_node

# Give void tag if void
$scoreboard players set random Random $(void)
execute if score random Random matches 1 run tag @e[type=minecraft:armor_stand,tag=NewNode] add Void

# Give name and tags
execute as @e[type=minecraft:armor_stand,tag=NewNode] run data modify entity @s CustomName set value {text:"ShopNode",color:"aqua",italic:false}
execute as @e[type=minecraft:armor_stand,tag=NewNode] run tag @s add EmberShopNode

# Add to Ember team for color
team join Ember @e[type=minecraft:armor_stand,tag=NewNode]

# Clear object level score
scoreboard players reset @e[type=minecraft:armor_stand,tag=NewNode] ObjectLevel

# Set rarity score
$scoreboard players set @e[type=minecraft:armor_stand,tag=NewNode] Rarity $(rarity)

# Set cost
$scoreboard players set @e[type=minecraft:armor_stand,tag=NewNode] EmberShopCost $(ember_cost)

# If debug is on, glow
execute if data storage exigence:debug {ember_shop:1} as @e[type=minecraft:armor_stand,tag=NewNode] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}

# Remove "NewTreasureNode" tag
tag @e[type=minecraft:armor_stand,tag=NewNode] remove NewNode