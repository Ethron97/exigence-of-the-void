# Loop
summon minecraft:ravager -245.0 2.00 -136.0 {Tags:["L10","DataMerge"],CustomName:{text:"Loopy",color:"dark_red",italic:false},PersistenceRequired:1b,Silent:1b}

# Climb
summon minecraft:ravager -258.09 14.66 -215.00 {Tags:["L10","DataMerge"],CustomName:{text:"Steppy",color:"dark_red",italic:false},PersistenceRequired:1b,Silent:1b}

# Guardy
summon minecraft:ravager -266.50 23.00 -265.61 {Tags:["L10","DataMerge"],CustomName:{text:"Guardy",color:"dark_red",italic:false},PersistenceRequired:1b,Silent:1b}

execute as @e[type=minecraft:ravager,tag=L10,tag=DataMerge] run attribute @s step_height base set 2.0
execute as @e[type=minecraft:ravager,tag=L10,tag=DataMerge] run attribute @s follow_range base set 200.0
execute as @e[type=minecraft:ravager,tag=L10,tag=DataMerge] run attribute @s knockback_resistance base set 10.0

# Give slowness so they don't wander before they are supposed to
effect give @e[type=minecraft:ravager,tag=L10] slowness infinite 100 true
effect give @e[type=minecraft:ravager,tag=L10] minecraft:resistance infinite 4 true
