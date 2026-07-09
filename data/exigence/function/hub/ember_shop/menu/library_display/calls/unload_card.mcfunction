# Load single card from library display
#   Called when this card gets reset or discarded

## CONSTRAINTS
#   AS library display
#   AT location ("anchor" point of card shop 52.5 212.0 0.5 )

## WITH
#   this entity item.components."minecraft:custom_data"

#====================================================================================================

$execute as @e[type=minecraft:item_display,tag=CardDisplay] if items entity @s container.0 paper[custom_data~{card_name:'$(card_name)'}] run kill @s