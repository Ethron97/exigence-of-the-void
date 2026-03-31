# Scheduled from ../player_sensors/private/sensors_complete

#====================================================================================================

execute in exigence:hub positioned 0.55 209.50 110.46 run data modify entity @n[type=item_display,tag=DoorChannelsInv,distance=..5] Glowing set value false

execute in exigence:hub positioned 0.55 209.50 110.46 as @e[type=#exigence:display,tag=PredungeonDisplay,tag=!FramePart,distance=..5] \
run data merge entity @s {start_interpolation:-1,transformation:{translation:[0f,0f,-200f]}}

schedule function exigence:hub/predungeon/menu/display/warp_door/warp_the_warp 10t