# Called on a 1t delay from setup_

# Give slowness so they don't wander before they are supposed to
execute in exigence:tutorial run effect give @n[type=minecraft:ravager,name=!Finaly,tag=L10,distance=..1000] slowness infinite 100 true
execute in exigence:tutorial run effect give @n[type=minecraft:ravager,tag=L10,distance=..1000] minecraft:resistance infinite 4 true
execute in exigence:tutorial run team join Enemy @n[type=minecraft:ravager,name=Climby,tag=L10,distance=..1000]
execute in exigence:tutorial run attribute @n[type=minecraft:ravager,name=Climby,tag=L10,distance=..1000] step_height base set 2

execute in exigence:tutorial run effect give @n[type=minecraft:ravager,name=Finaly,tag=L10,distance=..1000] slowness infinite 0 true
execute in exigence:tutorial run attribute @n[type=minecraft:ravager,name=Finaly,tag=L10,distance=..1000] follow_range base set 200