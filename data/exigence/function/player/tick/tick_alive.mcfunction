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

# Phantom item update (if they have one anywhere in their inventory, or a far stepper)
execute store result score @s Temp run clear @s carrot_on_a_stick[custom_data~{item_name:"item_phantom_membrane"}] 0
execute unless score @s Temp matches 1.. store result score @s Temp run clear @s carrot_on_a_stick[custom_data~{item_name:"item_far_step",is_soulbound:true}] 0
execute if score @s Temp matches 1.. run function exigence:player/utility/teleport_preview/player_update
# Do this before item checks so we know the preview is in the right spot (if valid)

# Check for right click on items
execute if score @s CarrotOnStick matches 1.. run function exigence:player/use_item/use_item
execute if score @s UseTrident matches 1.. run function exigence:player/use_item/other/trident

# Sculk step
scoreboard players remove @s[scores={game.player.sculk_step_cooldown=1..}] game.player.sculk_step_cooldown 1
# Reset advanamcent once it runs out
advancement revoke @s[advancements={exigence:listener/step_on_sculk=true},scores={game.player.sculk_step_cooldown=0}] only exigence:listener/step_on_sculk

# Check for important items nearby
#   FUN TIMES
#   If you do not check "if data entity @s Thrower", then it will DUPLICATE the item and throw an un-pickup-able item on the ground
execute as @e[type=minecraft:item,tag=!PreventItemDespawn,distance=..4] if items entity @s contents #exigence:important if data entity @s Thrower run function exigence:player/drop/dropped_important

# Refresh score to track who is holding echo(s)
execute store result score @s game.player.echo_fragments run clear @s #exigence:echo 0
# Found all if: one player is holding all the echos (and at least 1 was required)
execute if score echos.total game.dungeon.echo matches 1.. if score @s game.player.echo_fragments = echos.total game.dungeon.echo if score game.all_echos_found game.state matches 0 run function exigence:game/found_all_echos

## ITEM SOUNDS
# Echo item sounds
execute if score game.all_echos_found game.state matches 0 run function exigence:player/sound/item_sounds/echo
# Level Key item sounds
function exigence:player/sound/item_sounds/level_key
# Ardor flame item sounds
execute if score game.difficulty game.state matches 5 run function exigence:player/sound/item_sounds/ardor
# Vault Key item sounds
function exigence:player/sound/item_sounds/vault_key

# Check for ravager glass
execute if entity @s[gamemode=adventure] unless score @s game.player.mod.ravager_hoof matches 1 run function exigence:player/ravager_glass/check

# Move any carried entities along with the player
execute if entity @s[tag=Carrying] as @e[type=minecraft:villager,tag=Carried,distance=..100,limit=1] run tp @s ~ ~2 ~

# Re-reveal any blocks within 16 blocks that are not revealed, but were previously discovered
execute if score @s game.player.active_level matches 1..2 as @e[type=minecraft:marker,tag=HiddenBlock,tag=Discovered,tag=ReflectionNO,tag=!Revealed,tag=!Appeared,distance=..16] at @s run function exigence:mirror/hidden_blocks/reveal_block

# Beacon guide
execute if score game.difficulty game.state matches 5.. run function exigence:beacon/player/ambient_tick

# Claustrophobia tick
execute if score mod.claustrophobia game.modifiers matches 1 if score seconds.cooldown tick_counter matches 6 run function exigence:cards/claustrophobia/update

# If there is a vex within 1 block of center mass, get some wither (unless player already has it)
#execute if score game.max_menace game.state matches 1 unless entity @s[predicate=exigence:effects/wither] anchored eyes if entity @e[type=minecraft:vex,distance=..2] run effect give @s minecraft:wither 2 0 false

# If appearing dust:
execute if score @s game.player.dust_appearance matches 1.. run function exigence:hub/item_shop/item/item_dust_of_appearance/private/try_appear

#execute if score @s game.player.damage_taken matches 1.. run say Took damage
#execute if score @s game.player.damage_absorbed matches 1.. run say Absorbed damage
# If player has sunplate:
execute if score @s game.player.mod.sun_plate matches 4 run function exigence:player/modifiers/sun_plate_4_tick
# If player takes any damage and has PanicBoots, trigger panic boots
execute if score @s game.player.damage_taken matches 1.. if score @s game.player.mod.panic_boots matches 1.. run function exigence:player/modifiers/panic_boots
scoreboard players set @s game.player.damage_taken 0
scoreboard players set @s game.player.damage_absorbed 0

# If hitbox touching (roughly) a warden, die
execute at @e[type=warden,distance=..5] positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=2,dz=0] run damage @s 45 mob_attack

#====================================================================================================
## SECOND-TICKS
execute if score seconds.cooldown tick_counter matches 2 run function exigence:player/tick/tick_alive_second