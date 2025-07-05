# Called by game_tick when player is detected with CarrotOnStick score

## CONSTRAINTS
#   AS Player

#======================================================================================================

# DEBUG
#say Use Item

# Reset score
scoreboard players set @s CarrotOnStick 0

# Carrot slot
scoreboard players set #carrot_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run scoreboard players set #carrot_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set #carrot_slot Temp 2
execute if score #carrot_slot Temp matches 2 run say Carrot in main hand
execute if score #carrot_slot Temp matches 1 run say Carrot in off hand

# Spellsling
scoreboard players set #spellsling_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{is_spellsling:'true'}}}]}] run scoreboard players set #spellsling_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{is_spellsling:'true'}}}}] run scoreboard players set #spellsling_slot Temp 2
# Call sub function
execute if score #spellsling_slot Temp matches 1.. if score #carrot_slot Temp = #spellsling_slot Temp run function exigence:player/use_spellsling
execute if score #spellsling_slot Temp matches 1.. if score #carrot_slot Temp = #spellsling_slot Temp run return 1

# Dust
scoreboard players set #dust_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'dust_of_appearance'}}}]}] run scoreboard players set #dust_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'dust_of_appearance'}}}}] run scoreboard players set #dust_slot Temp 2
# Call sub function
execute at @s if score #dust_slot Temp matches 1.. if score #carrot_slot Temp = #dust_slot Temp run function exigence:player/use_item/other/use_dust
execute at @s if score #dust_slot Temp matches 1.. if score #carrot_slot Temp = #dust_slot Temp run return 1

# Redstone
scoreboard players set #redstone_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'dust_heighten'}}}]}] run scoreboard players set #redstone_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'dust_heighten'}}}}] run scoreboard players set #redstone_slot Temp 2
# Call sub function
execute at @s if score #redstone_slot Temp matches 1.. if score #carrot_slot Temp = #redstone_slot Temp run function exigence:player/use_item/other/use_redstone
execute at @s if score #redstone_slot Temp matches 1.. if score #carrot_slot Temp = #redstone_slot Temp run return 1

# Clock
scoreboard players set #clock_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'clock'}}}]}] run scoreboard players set #clock_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'clock'}}}}] run scoreboard players set #clock_slot Temp 2
# Call sub function
execute at @s if score #clock_slot Temp matches 1.. if score #carrot_slot Temp = #clock_slot Temp run function exigence:menu/item_display/void_shop_display/items/clock/use
execute at @s if score #clock_slot Temp matches 1.. if score #carrot_slot Temp = #clock_slot Temp run return 1

# Glow ink sac
scoreboard players set #glow_ink_sac_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'glow_ink_sac'}}}]}] run scoreboard players set #glow_ink_sac_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'glow_ink_sac'}}}}] run scoreboard players set #glow_ink_sac_slot Temp 2
# Call sub function
execute at @s if score #glow_ink_sac_slot Temp matches 1.. if score #carrot_slot Temp = #glow_ink_sac_slot Temp run function exigence:player/use_item/other/glow_ink_sac
execute at @s if score #glow_ink_sac_slot Temp matches 1.. if score #carrot_slot Temp = #glow_ink_sac_slot Temp run return 1

# Wind Line Item
scoreboard players set #item_wind_line_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'item_wind_line'}}}]}] run scoreboard players set #item_wind_line_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'item_wind_line'}}}}] run scoreboard players set #item_wind_line_slot Temp 2
# Call sub function
execute at @s if score #item_wind_line_slot Temp matches 1.. if score #carrot_slot Temp = #item_wind_line_slot Temp run function exigence:player/use_item/other/item_wind_line
execute at @s if score #item_wind_line_slot Temp matches 1.. if score #carrot_slot Temp = #item_wind_line_slot Temp run return 1

# Phantom Membrane Item
scoreboard players set #phantom_slot Temp 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'item_phantom_membrane'}}}]}] run scoreboard players set #phantom_slot Temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{item_name:'item_phantom_membrane'}}}}] run scoreboard players set #phantom_slot Temp 2
# Call sub function
execute at @s if score #phantom_slot Temp matches 1.. if score #carrot_slot Temp = #phantom_slot Temp run function exigence:player/use_item/phantom_membrane/try_use
execute at @s if score #phantom_slot Temp matches 1.. if score #carrot_slot Temp = #phantom_slot Temp run return 1
