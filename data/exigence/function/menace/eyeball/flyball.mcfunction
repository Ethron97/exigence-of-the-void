# CONSTRAINTS
#    AT location


# Add tag
#tag @s add Flying

# Summon vex
summon minecraft:vex ~ ~ ~ {life_ticks:999999,Tags:["EyeballMount","NewEyeballMount"],PersistenceRequired:1b,active_effects:[{id:"resistance",duration:999999,amplifier:4,show_particles:0b}\
]}
#,{id:"invisibility",duration:999999,amplifier:0,show_particles:0b}\

# Tweak attributes
execute as @e[type=minecraft:vex,tag=NewEyeballMount] run function exigence:menace/eyeball/private/flyball_data