# Call {ember_cost:#,rarity:#}
# Rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
# /function exigence:hub/ember_shop/summon_shop_node {ember_cost:#,rarity:#,void:0/1}

# Create a new node with tag "NewNode"
execute at @s align x align y align z run summon minecraft:marker ~.5 ~ ~.5 {Tags:["NewMarker","Marker"]}

# Give void tag if void
$scoreboard players set random Random $(void)
execute if score random Random matches 1 run tag @e[type=minecraft:marker,tag=NewMarker] add Void

# Give name and tags
execute as @e[type=minecraft:marker,tag=NewMarker] run data modify entity @s CustomName set value {text:"ShopNode",color:"aqua",italic:false}
execute as @e[type=minecraft:marker,tag=NewMarker] run tag @s add EmberShopNode

# Add to Ember team for color
team join Ember @e[type=minecraft:marker,tag=NewMarker]

# Clear object level score
scoreboard players reset @e[type=minecraft:marker,tag=NewMarker] ObjectLevel

# Set rarity score
$scoreboard players set @e[type=minecraft:marker,tag=NewMarker] Rarity $(rarity)

# Set cost
$scoreboard players set @e[type=minecraft:marker,tag=NewMarker] EmberShopCost $(ember_cost)

# If debug is on, glow
execute if data storage exigence:debug {ember_shop:1} as @e[type=minecraft:marker,tag=NewMarker] at @s run function exigence:hub/ember_shop/private/show_shop_node

# Remove "NewTreasureNode" tag
tag @e[type=minecraft:marker,tag=NewMarker] remove NewMarker