# Implements load_item_display

## CONSTRAINTS
# AS item that is to be converted to an item display 
# AT where it should be placed

## INPUT:
#   STR menu_tag - Tag to identify which menu this display belongs to
#   STR rotation - eg [0.0f,0.0f]
#   FLOAT/STR scale - eg '0.5'
#   FLOAT/STR hover_scale - eg '0.7'

#=============================================================================================================

# Summon artifact item
$function exigence:vault/artifact/summon_item {item_name:'$(item_name)'}

# If trident, replace with custom item with model (because default trident renders dumb)
execute as @e[type=minecraft:item,tag=NAS,nbt={Item:{id:"minecraft:trident"}}] run data modify entity @s Item.components."minecraft:custom_model_data" set value {"strings":["trident"]}
execute as @e[type=minecraft:item,tag=NAS,nbt={Item:{id:"minecraft:trident"}}] run data modify entity @s Item.id set value 'minecraft:stick'

# Call load_item_display as summoned item
#   This handles copying the data and summoning item display
$execute as @e[type=minecraft:item,tag=NAS] run function exigence:menu/load_item_display {menu_tag:'$(menu_tag)',Rotation:'$(Rotation)',scale:'0.5',hover_scale:'0.7'}

# Give NewVaultTrialDisplay tag
#tag @e[type=minecraft:item_display,tag=NewItemDisplay] add NewVaultTrialDisplay

# Remove local tag
tag @e[type=minecraft:item_display,tag=NewItemDisplay] remove NewItemDisplay

# Kill summoned item (no longer needed)
kill @e[type=minecraft:item,tag=NAS]
