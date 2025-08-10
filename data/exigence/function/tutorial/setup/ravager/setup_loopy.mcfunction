# Sets up the loop related ravager near the start of the tutorial

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

summon minecraft:ravager 118.50 104.00 12.45 {Tags:["L10"],CustomName:{text:"Loopy",color:"dark_red",italic:false},PersistenceRequired:1b}

schedule function exigence:tutorial/setup/ravager/setup_2 1t