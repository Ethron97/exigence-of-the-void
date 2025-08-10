# Sets up the climby ravager

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

summon minecraft:ravager 112.5 122.0 126.5 {Tags:["L10"],CustomName:{text:"Climby",color:"dark_red",italic:false},PersistenceRequired:1b,Glowing:1b}

schedule function exigence:tutorial/setup/ravager/setup_2 1t
