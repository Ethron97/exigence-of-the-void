# Setup crystal/interaction

## CONSTRAINTS
#   AS/AT crystal (interaction)

#====================================================================================================

execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup interaction TOPAZ

# Assign score
scoreboard players set @s game.story.ward_crystal.id 4

# Give data etc
scoreboard players set @s game.entity.object_level 4

# Set conduit block
setblock ~ ~ ~ conduit[waterlogged=false]

# Set name (players can see this, nevermind)
#data modify entity @s CustomName set value [{text:"Interaction | Crystal | ",color:"gray"},{text:"Topaz",color:"blue"}]

# Summon display entities based on health
execute if score ward.topaz game.story.wards matches 1.. run function exigence:game/other/wards/setup/summon_display
execute if score ward.topaz game.story.wards matches 2.. run function exigence:game/other/wards/setup/summon_display
execute if score ward.topaz game.story.wards matches 3.. run function exigence:game/other/wards/setup/summon_display
execute if score ward.topaz game.story.wards matches 4.. run function exigence:game/other/wards/setup/summon_display
execute if score ward.topaz game.story.wards matches 5.. run function exigence:game/other/wards/setup/summon_display

# Store this id for lookup
scoreboard players operation #compare game.story.ward_crystal.id = @s game.story.ward_crystal.id

# Setup summoned display entities
execute as @e[type=minecraft:item_display,tag=NewCrystalDisplay,distance=..1] run function exigence:game/other/wards/setup/topaz/3_setup_displays

# Remove local tag
tag @s remove NewCrystal