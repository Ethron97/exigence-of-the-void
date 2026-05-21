# Summon a new vex at location

# CONSTRAINTS
#    AT location

#====================================================================================================

execute if score toggle.menace debug matches 1 if score debug.level debug matches 3.. run say (D3 Menace) Summon vex
execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3 Enemy) Summon vex

# Summon vex
summon minecraft:vex ~ ~ ~ {life_ticks:300,Tags:["Eyeball","NewEyeball"],PersistenceRequired:1b\
,CustomName:{text:"Dungeon Spirit",color:"red"}\
,active_effects:[{id:"resistance",duration:999999,amplifier:4,show_particles:0b}\
]}
#,{id:"invisibility",duration:999999,amplifier:0,show_particles:0b}\

# Tweak attributes
execute as @e[type=minecraft:vex,tag=NewEyeball,distance=..1] run function exigence:menace/eyeball/private/flyball_data