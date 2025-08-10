# Called on a 1t delay from setup_

# Give slowness so they don't wander before they are supposed to
execute in exigence:tutorial run effect give @n[distance=..1000,type=minecraft:ravager,tag=L10] slowness infinite 100 true
execute in exigence:tutorial run effect give @n[distance=..1000,type=minecraft:ravager,tag=L10] minecraft:resistance infinite 4 true
execute in exigence:tutorial run team join Enemy @n[distance=..1000,type=minecraft:ravager,tag=L10,name=Climby]
execute in exigence:tutorial run attribute @n[distance=..1000,type=minecraft:ravager,tag=L10,name=Climby] step_height base set 2
