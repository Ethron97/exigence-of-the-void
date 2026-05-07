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
execute as @e[type=minecraft:item,tag=!SoulWarned,distance=..3] if items entity @s contents *[custom_data~{is_soulbound:true}] run function exigence:player/dropped_soulbound

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

# Refresh score to track who is holding echo(s)
execute store result score @s game.player.echo_fragments run clear @s #exigence:echo 0
# Found all if: one player is holding all the echos (and at least 1 was required)
execute if score .echos_required game.dungeon.echo matches 1.. if score @s game.player.echo_fragments = .echos_required game.dungeon.echo if score game.all_echos_found game.state matches 0 run function exigence:game/found_all_echos

## ITEM SOUNDS
# Echo item sounds
execute if score game.all_echos_found game.state matches 0 run function exigence:player/sound/item_sounds/echo
# Level Key item sounds
function exigence:player/sound/item_sounds/level_key
# Ardor flame item sounds
execute if score game.difficulty game.state matches 5 run function exigence:player/sound/item_sounds/ardor

# Check for ravager glass
execute if entity @s[gamemode=adventure] run function exigence:player/ravager_glass/check

# Move any carried entities along with the player
execute if entity @s[tag=Carrying] as @e[type=minecraft:villager,tag=Carried,distance=..100,limit=1] run tp @s ~ ~2 ~

# Re-reveal any blocks within 16 blocks that are not revealed, but were previously discovered
execute if score @s game.player.active_level matches 1..2 as @e[type=minecraft:marker,tag=HiddenBlock,tag=Discovered,tag=ReflectionNO,tag=!Revealed,tag=!Appeared,distance=..16] at @s run function exigence:mirror/hidden_blocks/reveal_block

# Beacon guide
execute if score game.difficulty game.state matches 5.. run function exigence:beacon/player/ambient_tick

#====================================================================================================
## SECOND-TICKS
execute if score seconds.cooldown tick_counter matches 2 run function exigence:player/tick/tick_alive_second