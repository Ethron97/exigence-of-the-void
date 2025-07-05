# Called by use_item if player has carrot on stick in offhand and NOT in mainhand

## CONSTRAINTS
#   AS Player

## INPUT
#   STR slot 'mainhand', or 'offhand'

#======================================================================================================

#$say Use item $(slot)

scoreboard players set #remove Temp 0

# Call item subfunction
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{is_spellsling:'true'}] run function exigence:player/use_spellsling
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'dust_of_appearance'}] run function exigence:player/use_item/other/use_dust
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'dust_heighten'}] run function exigence:player/use_item/other/use_redstone
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'clock'}] run function exigence:menu/item_display/void_shop_display/items/clock/use
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'glow_ink_sac'}] run function exigence:player/use_item/other/glow_ink_sac
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'item_wind_line'}] run function exigence:player/use_item/other/item_wind_line
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'item_phantom_membrane'}] run function exigence:player/use_item/phantom_membrane/try_use
$execute if items entity @s weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'item_far_step'}] run function exigence:player/use_item/far_step/try_use

$execute if score #remove Temp matches 1 run item replace entity @s weapon.$(slot) with air
