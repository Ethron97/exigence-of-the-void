# Handles escape portal titles and particles

#============================================================================================================

# Run particles
#execute as @e[type=minecraft:armor_stand,tag=ExitNode] at @s run tp @s ~ ~ ~ ~2 ~
#execute as @e[type=minecraft:armor_stand,tag=ExitNode] at @s if entity @a[tag=ActivePlayer,distance=..32] run function exigence:game/exit/exit_portal/particle

# Initial sound
execute if score exit.portal.countdown tick_counter matches 200 run playsound minecraft:block.trial_spawner.ambient_charged ambient @a ~ ~1000 ~ 1000 1.2

# Change portal glow to green
execute as @e[type=block_display,tag=ExitPortalDisplay] run team join Green @s

# 10 second countdown
# new title each second
execute if score exit.portal.countdown tick_counter matches 200 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 10...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 180 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 9...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 160 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 8...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 140 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 7...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 120 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 6...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 100 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 5...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 80 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 4...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 60 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 3...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 40 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 2...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 20 run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 1...",color:"dark_purple"}

# If new title, title and sound
scoreboard players operation #random Random = exit.portal.countdown tick_counter
scoreboard players operation #random Random %= 20 number
execute if score #random Random matches 0 run title @a[tag=ActivePlayer] title ""
#execute if score #random Random matches 0 unless score exit.portal.countdown tick_counter matches 200 run playsound minecraft:block.trial_spawner.break ambient @a ~ ~1000 ~ 1000 1.2

# Reduce portal tick
scoreboard players remove exit.portal.countdown tick_counter 1

# If tick counter reaches 0, kill all players still in the dungeon
execute if score exit.portal.countdown tick_counter matches 0 as @a[tag=ActivePlayer,tag=!Won,scores={dead=0}] run function exigence:game/exit/exit_portal/portal_close
