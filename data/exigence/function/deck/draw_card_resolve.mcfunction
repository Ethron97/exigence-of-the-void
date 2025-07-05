# Handle the effects of drawing a specific card

# AS Card ArmorStand

#====================================================================================================

# Add "Played" tag
tag @s add Played

# Call function from this' custom data
function exigence:deck/play_card with entity @s equipment.mainhand.components."minecraft:custom_data"

# Store name for bossbar
data modify storage exigence:last_card text set from entity @s CustomName

# Play thunder sound for sound queue
execute at @a[tag=PrimaryPlayer] run playsound entity.lightning_bolt.thunder weather @a ~ ~1000 ~ 1000 1

# Create sidebar display
function exigence:cards/add_sidebar_display

# Remove local tag
tag @s remove Drawing
