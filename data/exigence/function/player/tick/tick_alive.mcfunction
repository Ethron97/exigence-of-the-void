# Called from player/tick/tick

## CONSTRAINTS
#   AS/AT ActivePlayer, score dead=0

#==============================================================================================================

# Clear spellbound cards dropped on the ground
execute as @e[distance=..3,type=minecraft:item,tag=!SoulWarned,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{is_spellsling:"true"}}}}] run function exigence:player/dropped_soulbound
execute as @e[distance=..3,type=minecraft:item,tag=!SoulWarned,nbt={Item:{components:{"minecraft:custom_data":{is_soulbound:1b}}}}] run function exigence:player/dropped_soulbound

# Check for looking at pot if they don't have a pot breaker
function exigence:player/utility/pot/pot_check

# Check for important items nearby
#   FUN TIMES
#   If you do not check "if data entity @s Thrower", then it will DUPLICATE the item and throw an un-pickup-able item on the ground
execute as @e[distance=..4,type=minecraft:item,tag=!PreventItemDespawn] if items entity @s contents #exigence:important if data entity @s Thrower run function exigence:player/drop/dropped_important

# Phantom item update (if they have one anywhere in their inventory, or a far stepper)
execute store result score @s Temp run clear @s carrot_on_a_stick[custom_data={item_name:"item_phantom_membrane"}] 0
execute unless score @s Temp matches 1.. store result score @s Temp run clear @s carrot_on_a_stick[custom_data={item_name:"item_far_step",is_soulbound:true}] 0
execute if score @s Temp matches 1.. run function exigence:player/use_item/phantom_membrane/private/player_update

# If player has any farstep, queue removal of the item
execute if score @s effect_farstep matches 1.. run schedule function exigence:player/clear/farstepper 1t

# If player has JUMPBOOST or Speed2+, give them step height
#   Can probably relageted to every second
execute if score SecondsCooldown TickCounter matches 2 run function exigence:player/attributes/step_height

# Speed coalesce
#   Fixes bug where lower level speed gets "lost" when you have higher level speed
function exigence:player/effects/speed/should_coalesce




## MODIFIERS
# (Others are probably still under "player effect tick"

# Gathering Storm (with speed)
execute if score @s[predicate=exigence:effects/speed] mod_GatheringStorm matches 1 run function exigence:player/modifiers/gathering_storm

# Sunplate (speed)
execute if score @s mod_SunPlate matches 5 if score SecondsCooldown TickCounter matches 4 run function exigence:player/modifiers/sun_plate_s_tick

# Phantom Cloak (speed)
execute if score @s mod_PhantomScales matches 7 if score SecondsCooldown TickCounter matches 4 run function exigence:player/modifiers/phantom_cloak_s_tick

