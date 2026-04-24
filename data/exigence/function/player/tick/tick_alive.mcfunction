# Called from player/tick/tick

## CONSTRAINTS
#   AS/AT ActivePlayer, score dead=0

#====================================================================================================

# STATUS EFFECT TICK
function exigence:player/effects/player_effect_tick

#====================================================================================================

# Tick/time stat updates
execute if score game.max_menace game.state matches 0 run function exigence:player/stats/time/public/update_time_stats_alive
execute if score game.max_menace game.state matches 1 run function exigence:player/stats/time/public/update_time_stats_alive_mm

# Clear spellbound cards dropped on the ground
execute as @e[type=minecraft:item,tag=!SoulWarned,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{is_spellsling:"true"}}}}] run function exigence:player/dropped_soulbound
execute as @e[type=minecraft:item,tag=!SoulWarned,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{is_soulbound:1b}}}}] run function exigence:player/dropped_soulbound

# Check for looking at pot if they don't have a pot breaker
function exigence:player/utility/pot/pot_check

# Check for important items nearby
#   FUN TIMES
#   If you do not check "if data entity @s Thrower", then it will DUPLICATE the item and throw an un-pickup-able item on the ground
execute as @e[type=minecraft:item,tag=!PreventItemDespawn,distance=..4] if items entity @s contents #exigence:important if data entity @s Thrower run function exigence:player/drop/dropped_important

# Phantom item update (if they have one anywhere in their inventory, or a far stepper)
execute store result score @s Temp run clear @s carrot_on_a_stick[custom_data~{item_name:"item_phantom_membrane"}] 0
execute unless score @s Temp matches 1.. store result score @s Temp run clear @s carrot_on_a_stick[custom_data~{item_name:"item_far_step",is_soulbound:true}] 0
execute if score @s Temp matches 1.. run function exigence:player/use_item/phantom_membrane/private/player_update

# If player has any farstep, queue removal of the item
execute if score @s game.player.effects.farstep matches 1.. run schedule function exigence:player/clear/farstepper 1t

# If player has JUMPBOOST or Speed2+, give them step height
#   Can probably relageted to every second
execute if score seconds.cooldown tick_counter matches 2 run function exigence:player/attributes/step_height

# Speed coalesce
#   Fixes bug where lower level speed gets "lost" when you have higher level speed
function exigence:player/effects/speed/should_coalesce

# Refresh score to track who is holding echo(s)
execute store result score @s game.player.echo_fragments run clear @s #exigence:echo 0
execute if score @s game.player.echo_fragments = .echos_required game.dungeon.echo if score game.all_echos_found game.state matches 0 run function exigence:game/found_all_echos

# Update active level
function exigence:player/update_active_level

# Item sounds
execute if score game.all_echos_found game.state matches 0 run function exigence:player/sound/item_sounds/echo

# Check for ravager glass
function exigence:player/ravager_glass/check

#====================================================================================================
## MODIFIERS
# (Others are probably still under "player effect tick"

# Gathering Storm (with speed)
execute if score @s[predicate=exigence:effects/speed] game.player.mod.gathering_storm matches 1 run function exigence:player/modifiers/gathering_storm

# Sunplate (speed)
execute if score @s game.player.mod.sun_plate matches 5 if score seconds.cooldown tick_counter matches 4 run function exigence:player/modifiers/sun_plate_s_tick

# Phantom Cloak (speed)
execute if score @s game.player.mod.phantom_scales matches 7 if score seconds.cooldown tick_counter matches 4 run function exigence:player/modifiers/phantom_cloak_s_tick

