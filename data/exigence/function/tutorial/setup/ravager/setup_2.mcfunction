# Called on a 1t delay from setup_

# Give slowness so they don't wander before they are supposed to
execute in exigence:tutorial run effect give @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,name=!Finaly,tag=L10,limit=1] slowness infinite 100 true
execute in exigence:tutorial run effect give @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,tag=L10,limit=1] minecraft:resistance infinite 4 true
execute in exigence:tutorial run team join Enemy @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,name=Climby,tag=L10,limit=1]
execute in exigence:tutorial run attribute @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,name=Climby,tag=L10,limit=1] step_height base set 2

execute in exigence:tutorial run effect give @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,name=Finaly,tag=L10,limit=1] slowness infinite 0 true
execute in exigence:tutorial run attribute @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,name=Finaly,tag=L10,limit=1] follow_range base set 200