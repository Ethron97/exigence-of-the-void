# Called by spellbind, to add data

## CONSTRAINTS
#   AS Item, tag NCS (new card summon)

#==========================================================================================================

# Give tag (for give command)
tag @s add ForceGive

# Change from paper to carrot on stick so we can detect right click
data modify entity @s Item.id set value "minecraft:carrot_on_a_stick"

# Give custom data so we know it's a spellbind
data modify entity @s Item.components."minecraft:custom_data".is_spellsling set value "true"

# Append to lore explaining Spellbound
data modify entity @s Item.components."minecraft:lore" append value [{text:"",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Spellbound: Right click to play",italic:true,color:"dark_gray"}]
execute if score #CostReduced game.resources matches 1 run data modify entity @s Item.components."minecraft:lore" append value [{text:"Cost reduced by Spellbook",italic:true,color:"dark_gray"}]

# Add costs to the lore to reference later
data modify entity @s Item.components."minecraft:custom_data".green set from storage exigence:resources green
data modify entity @s Item.components."minecraft:custom_data".red set from storage exigence:resources red
data modify entity @s Item.components."minecraft:custom_data".aqua set from storage exigence:resources aqua

# Give to player(s)
execute as @a[tag=ActivePlayer] run function exigence:player/give_from_item/give {type:'hotbar',index:0,card_name:'$(card_name)'}

# Kill item
kill @s
