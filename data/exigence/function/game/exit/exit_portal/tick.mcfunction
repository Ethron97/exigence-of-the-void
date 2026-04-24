# Handles escape portal titles and particles

## CONSTRAINTS
#   AS/AT ExitNode (tag=OpenedPortal)

#====================================================================================================

# Run particles
#execute as @e[type=minecraft:marker,tag=ExitNode] at @s run tp @s ~ ~ ~ ~2 ~
#execute as @e[type=minecraft:marker,tag=ExitNode] at @s if entity @a[tag=ActivePlayer,distance=..32] run function exigence:game/exit/exit_portal/particle

# If new title, title and sound
scoreboard players operation #temp Temp = exit.portal.countdown tick_counter
scoreboard players operation #temp Temp %= 20 number
#   Call switch
execute if score #temp Temp matches 0 run function exigence:game/exit/exit_portal/private/warn
execute if score #temp Temp matches 0 run title @a[tag=ActivePlayer] title ""
#execute if score #temp Temp matches 0 unless score exit.portal.countdown tick_counter matches 200 run playsound minecraft:block.trial_spawner.break ambient @a ~ ~1000 ~ 1000 1.2

# Reduce portal tick
scoreboard players remove exit.portal.countdown tick_counter 1

# If tick counter reaches 0, kill all players still in the dungeon
#   TODO try_kill, if player is offline
execute if score exit.portal.countdown tick_counter matches 0 as @a[scores={dead=0},tag=ActivePlayer,tag=!Won] run function exigence:game/exit/exit_portal/portal_close
