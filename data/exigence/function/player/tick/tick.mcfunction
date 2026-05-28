# Called from game_tick

## CONSTRAINTS
#   AS/AT Player

#====================================================================================================

# Return if not active
execute unless entity @s[tag=ActivePlayer] run return run tellraw @a [{text:"Called player/tick as non-active player?",color:"red"}]

# If just died:
execute if score @s dead matches 1 run return run function exigence:player/death/died
#----------------------------------------------------------------------------------------------------


# COMMON FUNCTIONS (dead or alive)
# Snowball usage
execute if score @s game.player.used.snowball matches 1.. run function exigence:hub/item_shop/item/item_web_ball/trigger
# TODO move this to E TICK
execute if entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=SnowballMarker,limit=1] run function exigence:hub/item_shop/item/item_web_ball/private/tick_loop

# Resource display
execute if score game.max_menace game.state matches 0 run function exigence:player/display/resource_bar/tick

# Generic time stats
scoreboard players add @s profile.data.gametime.cr.ticks_playtime 1
execute if score game.max_menace game.state matches 0 run scoreboard players add @s profile.data.gametime.cr.regulation_ticks 1
execute if score game.max_menace game.state matches 1 run scoreboard players add @s profile.data.gametime.cr.max_menace_ticks 1

# If player takes 5 hearts (100 damage) and is not dead, gain +1 red
#execute if entity @e[type=minecraft:player,tag=ActivePlayer] as @a[tag=ActivePlayer] if score @s game.player.damage_taken matches 100.. run function exigence:resources/try_generate {green:0,red:1,aqua:0}

# If player takes any damage and has PanicBoots, trigger panic boots
execute if score @s game.player.damage_taken matches 1.. if score @s game.player.mod.panic_boots matches 1.. run function exigence:player/modifiers/panic_boots
execute if score @s game.player.damage_taken matches 1.. run scoreboard players set @s game.player.damage_taken 0

#====================================================================================================
# LIVING PLAYER FUNCTIONS:
execute if score @s dead matches 0 at @s run return run function exigence:player/tick/tick_alive
#----------------------------------------------------------------------------------------------------
# DEAD PLAYER FUNCTIONS:
execute if score @s dead matches 2 at @s run function exigence:player/tick/tick_dead