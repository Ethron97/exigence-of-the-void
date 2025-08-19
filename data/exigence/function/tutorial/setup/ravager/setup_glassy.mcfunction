# Sets up the glass steppy ravager

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

summon minecraft:ravager 177.5 125.0 96.5 {Tags:["L10"],CustomName:{text:"Glassy",color:"dark_red",italic:false},PersistenceRequired:1b}

schedule function exigence:tutorial/setup/ravager/setup_2 1t
