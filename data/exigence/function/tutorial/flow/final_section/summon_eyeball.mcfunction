# Summon a new vex at location

# CONSTRAINTS
#    AT location

#====================================================================================================

# Summon vex
summon minecraft:vex ~ ~ ~ {life_ticks:999999,Tags:["TutorialEyeball","NewEyeball"],PersistenceRequired:1b\
,CustomName:{text:"Dungeon Spirit",color:"red"}\
,active_effects:[{id:"resistance",duration:999999,amplifier:4,show_particles:0b}\
]}
#,{id:"invisibility",duration:999999,amplifier:0,show_particles:0b}\

# Tweak attributes
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:vex,tag=NewEyeball] run function exigence:menace/eyeball/private/flyball_data