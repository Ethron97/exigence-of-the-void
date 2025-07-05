# Reset:
function exigence:mirror/mirrors/stairs/reset with storage exigence:dungeon Mirror
data modify storage temp Mirror.mirror set value "stairs"

# Out to in
data modify storage temp Mirror.Y set value 31

# Only set up 1
execute store result score random Random run random value 3..5

#data modify storage temp Mirror.X set value -365
#data modify storage temp Mirror.Z set value -280
#execute if score random Random matches 1 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.real_id
#execute if score random Random matches 1 run data modify storage temp Mirror.reflection set value "NO"
#execute if score random Random matches 1 run function exigence:mirror/mirrors/place_block with storage temp Mirror
#data modify storage temp Mirror.Z set value -258
#execute if score random Random matches 1 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.mirror_id
#execute if score random Random matches 1 run data modify storage temp Mirror.reflection set value "YES"
#execute if score random Random matches 1 run function exigence:mirror/mirrors/place_block with storage temp Mirror

#data modify storage temp Mirror.Z set value -278
#execute if score random Random matches 2 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.real_id
#execute if score random Random matches 2 run data modify storage temp Mirror.reflection set value "NO"
#execute if score random Random matches 2 run function exigence:mirror/mirrors/place_block with storage temp Mirror
#data modify storage temp Mirror.Z set value -260
#execute if score random Random matches 2 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.mirror_id
#execute if score random Random matches 2 run data modify storage temp Mirror.reflection set value "YES"
#execute if score random Random matches 2 run function exigence:mirror/mirrors/place_block with storage temp Mirror

data modify storage temp Mirror.X set value -366
data modify storage temp Mirror.Z set value -276
execute if score random Random matches 3 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.real_id
execute if score random Random matches 3 run data modify storage temp Mirror.reflection set value "NO"
execute if score random Random matches 3 run function exigence:mirror/mirrors/place_block with storage temp Mirror
data modify storage temp Mirror.Z set value -262
execute if score random Random matches 3 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.mirror_id
execute if score random Random matches 3 run data modify storage temp Mirror.reflection set value "YES"
execute if score random Random matches 3 run function exigence:mirror/mirrors/place_block with storage temp Mirror

data modify storage temp Mirror.Z set value -274
execute if score random Random matches 4 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.real_id
execute if score random Random matches 4 run data modify storage temp Mirror.reflection set value "NO"
execute if score random Random matches 4 run function exigence:mirror/mirrors/place_block with storage temp Mirror
data modify storage temp Mirror.Z set value -264
execute if score random Random matches 4 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.mirror_id
execute if score random Random matches 4 run data modify storage temp Mirror.reflection set value "YES"
execute if score random Random matches 4 run function exigence:mirror/mirrors/place_block with storage temp Mirror

data modify storage temp Mirror.X set value -367
data modify storage temp Mirror.Z set value -272
execute if score random Random matches 5 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.real_id
execute if score random Random matches 5 run data modify storage temp Mirror.reflection set value "NO"
execute if score random Random matches 5 run function exigence:mirror/mirrors/place_block with storage temp Mirror
data modify storage temp Mirror.Z set value -266
execute if score random Random matches 5 run data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.mirror_id
execute if score random Random matches 5 run data modify storage temp Mirror.reflection set value "YES"
execute if score random Random matches 5 run function exigence:mirror/mirrors/place_block with storage temp Mirror