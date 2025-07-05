# Call as predungeon party lead if there are any coop players

# DEBUG
#say Coop validaate

# Check for blacklisted cards in the deck
data modify storage exigence:hub valid_coop_cards set value true

# Chest A
execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] if items block ~2 ~ ~0 container.* paper[\
minecraft:custom_data~{card_name:'key_hunter_i'}|\
minecraft:custom_data~{card_name:'key_hunter_ii'}|\
minecraft:custom_data~{card_name:'key_hunter_iii'}|\
minecraft:custom_data~{card_name:'led_by_ancient_light'}|\
minecraft:custom_data~{card_name:'void_chain'}|\
minecraft:custom_data~{card_name:'key_master'}|\
minecraft:custom_data~{card_name:'vindication'}\
] run data modify storage exigence:hub valid_coop_cards set value false

# Chest B
execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] if items block ~2 ~ ~1 container.* paper[\
minecraft:custom_data~{card_name:'key_hunter_i'}|\
minecraft:custom_data~{card_name:'key_hunter_ii'}|\
minecraft:custom_data~{card_name:'key_hunter_iii'}|\
minecraft:custom_data~{card_name:'led_by_ancient_light'}|\
minecraft:custom_data~{card_name:'void_chain'}|\
minecraft:custom_data~{card_name:'key_master'}|\
minecraft:custom_data~{card_name:'vindication'}\
] run data modify storage exigence:hub valid_coop_cards set value false

# ADDED THIS TO BYPASS BLACKLIST INSTEAD OF REMOVING THINGS FOR NOW
data modify storage exigence:hub valid_coop_cards set value true

execute if data storage exigence:hub {valid_coop_cards:false} run tellraw @s {text:"Error: The following cards do not function in Co-op: [Key Hunter, Led by Ancient Light, Vindication]",color:"red"}
execute if data storage exigence:hub {valid_coop_cards:false} run tellraw @a[tag=Coop,tag=!Lockerroom] {text:"Error: The following cards do not function in Co-op: [Key Hunter, Led by Ancient Light, Vindication, Void Chain, Key Master]",color:"red"}



# Check if coop player has cards somehow
data modify storage exigence:hub coop_no_cards set value true

execute as @a[tag=Coop,tag=!Lockerroom] if data entity @s {Inventory:[{id:"minecraft:paper"}]} run data modify storage exigence:hub coop_no_cards set value false

execute if data storage exigence:hub {coop_no_cards:false} run tellraw @s {text:"Error: Co-op player cannot take cards into the dungeon",color:"red"}
execute if data storage exigence:hub {coop_no_cards:false} run tellraw @a[tag=Coop,tag=!Lockerroom] {text:"Error: Co-op player cannot take cards into the dungeon",color:"red"}


execute unless data storage exigence:hub {valid_coop_cards:true,coop_no_cards:true} run data modify storage exigence:hub valid_coop set value false

