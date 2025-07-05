# Call as coop player

#say Try enter predungeon (coop)

# Item Check
#   Returns exigence:hub valid_items true/false
function exigence:hub/predungeon/private/validate_items

# Cannot have any cards
data modify storage exigence:hub valid_cards set value true
execute if data entity @s {Inventory:[{id:"minecraft:paper"}]} run data modify storage exigence:hub valid_cards set value false
execute if data storage exigence:hub {valid_cards:false} run tellraw @s {text:"Error: Cards found in inventory. Place in Deck chest to add to your deck.",color:"red"}

# Warn coop player that piggy bank only works for main player?
# TODO

# If valid items false, kickback
execute unless data storage exigence:hub {valid_items:true,valid_cards:true} run tp @a[tag=Lockerroom] -260.5 17.0 -59.5
execute unless data storage exigence:hub {valid_items:true,valid_cards:true} run playsound entity.enderman.teleport ambient @a ~ ~1000 ~ 1000 1

# If valid items and cards, enter room
execute if data storage exigence:hub {valid_items:true,valid_cards:true} run function exigence:hub/predungeon/coop_enter
