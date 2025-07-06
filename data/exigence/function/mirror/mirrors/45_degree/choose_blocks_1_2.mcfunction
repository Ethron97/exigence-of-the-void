scoreboard players operation OutX MirrorSetup = ModX MirrorSetup
scoreboard players operation OutY MirrorSetup = ModY MirrorSetup
scoreboard players operation OutZ MirrorSetup = ModZ MirrorSetup

scoreboard players operation OutX MirrorSetup *= out Random
scoreboard players operation OutZ MirrorSetup *= out Random

scoreboard players operation OutX MirrorSetup += StartX MirrorSetup
scoreboard players operation OutY MirrorSetup += StartY MirrorSetup
scoreboard players operation OutZ MirrorSetup += StartZ MirrorSetup

execute store result storage exigence:mirror X int 1 run scoreboard players get OutX MirrorSetup
execute store result storage exigence:mirror Y int 1 run scoreboard players get OutY MirrorSetup
execute store result storage exigence:mirror Z int 1 run scoreboard players get OutZ MirrorSetup

data modify storage exigence:mirror current_id set from storage exigence:mirror real_id
data modify storage exigence:mirror reflection set value "NO"
function exigence:mirror/mirrors/place_block with storage exigence:mirror

scoreboard players operation OutX MirrorSetup = ModZ MirrorSetup
scoreboard players operation OutY MirrorSetup = ModY MirrorSetup
scoreboard players operation OutZ MirrorSetup = ModX MirrorSetup

scoreboard players operation OutX MirrorSetup *= out Random
scoreboard players operation OutZ MirrorSetup *= out Random

scoreboard players operation OutX MirrorSetup += MirrorX MirrorSetup
scoreboard players operation OutZ MirrorSetup += MirrorZ MirrorSetup

scoreboard players operation OutX MirrorSetup += StartX MirrorSetup
scoreboard players operation OutY MirrorSetup += StartY MirrorSetup
scoreboard players operation OutZ MirrorSetup += StartZ MirrorSetup

execute store result storage exigence:mirror X int 1 run scoreboard players get OutX MirrorSetup
execute store result storage exigence:mirror Y int 1 run scoreboard players get OutY MirrorSetup
execute store result storage exigence:mirror Z int 1 run scoreboard players get OutZ MirrorSetup

data modify storage exigence:mirror current_id set from storage exigence:mirror mirror_id
data modify storage exigence:mirror reflection set value "YES"
function exigence:mirror/mirrors/place_block with storage exigence:mirror

# Place glow lichen under mirror block
#scoreboard players remove OutY MirrorSetup 1
#execute store result storage exigence:mirror Y int 1 run scoreboard players get OutY MirrorSetup
#data modify storage exigence:mirror current_id set value glow_lichen
#function exigence:mirror/mirrors/place_lichen with storage exigence:mirror