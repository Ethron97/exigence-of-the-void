# Validate item and deck composition
#   Call as player entering room

#say Try enter predungeon

# Set difficulty to -1 so we know we don't care about validating cards right now
scoreboard players set Difficulty DungeonRun -1

# Validate
function exigence:hub/predungeon/private/validate

# Cannot have any cards
data modify storage exigence:hub valid_cards set value true
execute if data entity @s {Inventory:[{id:"minecraft:paper"}]} run data modify storage exigence:hub valid_cards set value false
execute if data storage exigence:hub {valid_cards:false} run tellraw @s {text:"Error: Cards found in inventory. Place in Deck chest to add to your deck.",color:"red"}

# If valid items false, kickback
execute unless data storage exigence:hub {valid_items:true,too_many_copies:false,valid_cards:true} run tp @a[tag=Lockerroom] -260.5 17.0 -59.5
execute unless data storage exigence:hub {valid_items:true,too_many_copies:false,valid_cards:true} run playsound entity.enderman.teleport ambient @a ~ ~1000 ~ 1000 1

# If valid items is true and too_many_copies is false, enter room
execute if data storage exigence:hub {valid_items:true,too_many_copies:false,valid_cards:true} run function exigence:hub/predungeon/enter_room
