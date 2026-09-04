# Tick player when they are exalting in their victory

## CONSTRAINTS
#   AS player

#====================================================================================================

# Check if they clicked with the carrot on a stick
execute if entity @a[scores={CarrotOnStick=1..},tag=Exalting] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item_name:'exit_exalting'}] as @a[tag=Exalting] run function exigence:player/tick/private/done_exalting

# Prevent dropping any items
execute at @s as @e[type=minecraft:item,tag=!SoulWarned,distance=..5] run function exigence:player/dropped_soulbound

# Replace actionbar with "Use the XXX item to return to the hub when ready"
# (This happens in the hub/update_actionbar logic)