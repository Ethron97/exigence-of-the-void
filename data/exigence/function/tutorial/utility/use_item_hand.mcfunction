# Called by use_item

## CONSTRAINTS
#   AS Player

## INPUT
#   STR slot 'mainhand', or 'offhand'

#======================================================================================================

#$say Use item $(slot)

# Call item subfunction
$execute if items entity @s[advancements={exigence:story/win_difficulty_0=true}] weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'exit_tutorial'}] run function exigence:tutorial/access/leave_tutorial
$execute if items entity @s[advancements={exigence:story/win_difficulty_0=true}] weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'skip_section'}] run function exigence:tutorial/flow/skip_section
$execute if items entity @s[advancements={exigence:story/win_difficulty_0=false}] weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'exit_tutorial'}] run dialog show @s exigence:tutorial/exit_tutorial_confirm
$execute if items entity @s[advancements={exigence:story/win_difficulty_0=false}] weapon.$(slot) carrot_on_a_stick[custom_data~{item_name:'skip_section'}] run dialog show @s exigence:tutorial/skip_section_confirm
