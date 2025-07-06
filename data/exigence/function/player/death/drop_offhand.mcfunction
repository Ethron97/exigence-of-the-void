# Called by death.died

## CONSTRAINTS
#   AS player

#===========================================================================================================

# If no item in offhand, return
execute unless items entity @s weapon.offhand * run return 1

# DEBUG
#say dropping offhand

# Copy offhand to intermediary for data compare
item replace entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] weapon.mainhand from entity @s weapon.offhand

# IF card is not spellbound AND item is on drop on death list, call drop
execute unless data entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] {equipment:{maindhand:{components:{"minecraft:custom_data":{is_spellsling:"true"}}}}} if items entity @s weapon.offhand #exigence:drop_on_death run function exigence:player/drop/drop_slot_specific {slot_name:'weapon.offhand'}
#   IF bag of holding, do not drop bag items
execute unless data entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] {equipment:{mainhand:{components:{"minecraft:custom_data":{is_spellsling:"true"}}}}} if items entity @s weapon.offhand #exigence:consumable unless score @s mod_VoidBundle matches 1.. run function exigence:player/drop/drop_slot_specific {slot_name:'weapon.offhand'}
