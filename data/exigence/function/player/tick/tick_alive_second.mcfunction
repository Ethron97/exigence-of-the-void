# Called from player/tick/tick_alive, every second
# Reserved for any non-priority checks

## CONSTRAINTS
#   AS/AT ActivePlayer, score dead=0

#====================================================================================================

# If player has JUMPBOOST or Speed2+, give them step height
function exigence:player/attributes/step_height

# Speed coalesce
#   Fixes bug where lower level speed gets "lost" when you have higher level speed
function exigence:player/effects/speed/should_coalesce

# Update active level
function exigence:player/update_active_level

# Check for menace nodes
function exigence:menace/node/check_for_nodes

# Break invis if max menace
execute if score game.max_menace game.state matches 1 if entity @s[team=Enemy] run function exigence:player/effects/invis/break_from_max_menace

# Clear nausea (from Grease)
effect clear @s nausea

# Update is void shopping
execute if entity @s[tag=VoidShopping] unless entity @e[type=minecraft:enderman,distance=..7] run function exigence:player/tick/private/end_void_shopping
execute if entity @s[tag=!VoidShopping] if entity @e[type=minecraft:enderman,distance=..7] run function exigence:player/tick/private/start_void_shopping

#====================================================================================================
## MODIFIERS
# (Others are probably still under "player effect tick"

# Gathering Storm (with speed)
execute if score @s[predicate=exigence:effects/speed] game.player.mod.gathering_storm matches 1 run function exigence:player/modifiers/gathering_storm

# Sunplate (give resistance if has absorption)
execute if score @s[predicate=exigence:effects/absorption] game.player.mod.sun_plate matches 5 run function exigence:player/modifiers/sun_plate_s_tick

# Phantom Cloak (speed)
execute if score @s game.player.mod.phantom_scales matches 7 run function exigence:player/modifiers/phantom_cloak_s_tick

# Mirror Vision
execute if score @s game.player.mod.mirror_vision matches 1.. run function exigence:player/modifiers/mirror_vision

# Feather + Wind Charge attribute reset if on ground after a second after using a wind charge
execute if score @s game.player.feather_gravity matches 1.. run scoreboard players remove @s game.player.feather_gravity 1
execute if score @s game.player.feather_gravity matches 1 if entity @s[predicate=exigence:player/is_on_ground] run attribute @s minecraft:gravity modifier remove exigence:feather
