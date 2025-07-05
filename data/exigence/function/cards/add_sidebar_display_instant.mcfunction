# Call as card armorstand
# Set data exigence:temp, set $score and $display_name and $color

# Copy display_name from hand item custom data
data modify storage exigence:temp display_name set from entity @s equipment.mainhand.components."minecraft:custom_data".display_name
data modify storage exigence:temp card_name set from entity @s equipment.mainhand.components."minecraft:custom_data".card_name

# Set color depending on rarity score
execute if score @s Rarity matches 1 run data modify storage exigence:temp color set value "dark_aqua"
execute if score @s Rarity matches 2 run data modify storage exigence:temp color set value "green"
execute if score @s Rarity matches 3 run data modify storage exigence:temp color set value "blue"
execute if score @s Rarity matches 4 run data modify storage exigence:temp color set value "light_purple"
execute if score @s Rarity matches 5 run data modify storage exigence:temp color set value "red"

# Set score from whether game is playing or was instant
scoreboard players add #Highest CardsPlayed 1
execute store result storage exigence:temp score int 1 run scoreboard players get #Highest CardsPlayed

# Update times played and processed
function exigence:cards/get_times_scores with entity @s equipment.mainhand.components."minecraft:custom_data"

# Update card id from Deck score
execute store result storage exigence:temp id int 1 run scoreboard players get @s Deck

# Initialize blank variables so macro functions
data modify storage exigence:temp spellsling set value ""
data modify storage exigence:temp recycled set value ""
data modify storage exigence:temp instant set value "✦ "
function exigence:cards/add_sidebar_display_macro with storage exigence:temp
