# Sets up the loop related ravager near the start of the tutorial

## CONSTRAINTS
#   IN exigence:tutorial
#   AT location

#=============================================================================================================

summon minecraft:ravager ~ ~ ~ {Tags:["L10"],CustomName:{text:"Finaly",color:"dark_red",italic:false},PersistenceRequired:1b}

schedule function exigence:tutorial/setup/ravager/setup_2 1t
