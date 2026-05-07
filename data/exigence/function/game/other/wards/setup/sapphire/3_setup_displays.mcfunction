# Create block display entity for this

## CONSTRAINTS
#   AS item display (tag=NewCrystalDisplay)

#====================================================================================================

execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup display SAPPHIRE

team join Echo @s
tag @s add Sapphire
data modify entity @s CustomName set value [{text:"ItemDisplay | ",color:"gray"},{text:"Sapphire",color:"blue"}]

# Assign id
scoreboard players operation @s game.story.ward_crystal.id = #compare game.story.ward_crystal.id

# Change block
data modify entity @s item.id set value "minecraft:blue_stained_glass"

# Remove local tag
tag @s remove NewCrystalDisplay
