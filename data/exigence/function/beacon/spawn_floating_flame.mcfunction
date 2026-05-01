#say new floating flame

## CONSTRAINTS
#   AS active player holding netherstar

say DEPRECATED

# Invisible vex that is bound to the beacon and spits fire particles around it
execute if score game.active_level game.state matches 0 run summon minecraft:vex ~ ~ ~ {life_ticks:300,bound_pos:[I;-294,222,-251],Tags:["NewFloatingFlame","FloatingFlame"],PersistenceRequired:1b,Silent:1b}
execute if score game.active_level game.state matches 1 run execute if score @s game.player.active_level matches 1 run summon minecraft:vex ~ ~ ~ {life_ticks:300,bound_pos:[I;-294,22,-251],Tags:["NewFloatingFlame","FloatingFlame"],PersistenceRequired:1b,Silent:1b}
execute if score game.active_level game.state matches 1 run execute if score @s game.player.active_level matches 2 run summon minecraft:vex ~ ~ ~ {life_ticks:300,bound_pos:[I;-385,84,-206],Tags:["NewFloatingFlame","FloatingFlame"],PersistenceRequired:1b,Silent:1b}
execute if score game.active_level game.state matches 1 run execute if score @s game.player.active_level matches 3 run summon minecraft:vex ~ ~ ~ {life_ticks:300,bound_pos:[I;-294,158,30],Tags:["NewFloatingFlame","FloatingFlame"],PersistenceRequired:1b,Silent:1b}
#execute if score game.active_level game.state matches 1 run execute if score @s game.player.active_level matches 4 run summon minecraft:vex ~ ~ ~ {life_ticks:300,bound_pos:[I;-294,22,-251],Tags:["NewFloatingFlame","FloatingFlame"],PersistenceRequired:1b,Silent:1b}
# Join player team so they don't attack
execute as @e[type=minecraft:vex,tag=NewFloatingFlame] run team join Player @s

# Make invisible
effect give @e[type=minecraft:vex,tag=NewFloatingFlame] invisibility infinite 0 true

# Give fire res so hopefully they don't kill powder snow?
effect give @e[type=minecraft:vex,tag=NewFloatingFlame] fire_resistance infinite 0 true

# Reset cooldown
execute store result score floating.flame.cooldown tick_counter run random value 50..80

# Remove local tag
tag @e[type=minecraft:vex,tag=NewFloatingFlame] remove NewFloatingFlame
