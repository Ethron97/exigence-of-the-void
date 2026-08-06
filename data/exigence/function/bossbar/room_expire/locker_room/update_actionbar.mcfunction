# Update the value of this bossbar

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Update bar macro
scoreboard players operation #bossbar Temp = @s hub.room.max_timer
scoreboard players operation #bossbar Temp -= @s hub.room.current_timer
scoreboard players operation #bossbar Temp /= 20 number

# Get score
scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Set actionbar
execute as @a[tag=LockerRoom] if score @s hub.player.room_id = #compare hub.room.room_id \
run title @s actionbar [{text:"This room will forcibly close in ",color:"red"},{score:{name:"#bossbar",objective:"Temp"},color:"gold"},{text:" seconds",color:"red"}]
