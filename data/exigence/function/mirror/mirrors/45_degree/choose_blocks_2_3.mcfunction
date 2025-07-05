scoreboard players operation OutX MirrorSetup = ModX MirrorSetup
scoreboard players operation OutY MirrorSetup = ModY MirrorSetup
scoreboard players operation OutZ MirrorSetup = ModZ MirrorSetup

scoreboard players operation OutX MirrorSetup *= out Random
scoreboard players operation OutZ MirrorSetup *= out Random

scoreboard players operation OutX MirrorSetup += StartX MirrorSetup
scoreboard players operation OutY MirrorSetup += StartY MirrorSetup
scoreboard players operation OutZ MirrorSetup += StartZ MirrorSetup

execute store result storage temp Mirror.X int 1 run scoreboard players get OutX MirrorSetup
execute store result storage temp Mirror.Y int 1 run scoreboard players get OutY MirrorSetup
execute store result storage temp Mirror.Z int 1 run scoreboard players get OutZ MirrorSetup

data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.real_id
data modify storage temp Mirror.reflection set value "NO"
function exigence:mirror/mirrors/place_block with storage temp Mirror

scoreboard players operation OutX MirrorSetup = ModX MirrorSetup
scoreboard players operation OutZ MirrorSetup = ModZ MirrorSetup

scoreboard players operation OutX MirrorSetup *= out Random
scoreboard players operation OutZ MirrorSetup *= out Random

scoreboard players operation OutX MirrorSetup *= -1 Random
scoreboard players operation OutZ MirrorSetup *= -1 Random

scoreboard players operation OutX MirrorSetup += MirrorX MirrorSetup
scoreboard players operation OutZ MirrorSetup += MirrorZ MirrorSetup

scoreboard players operation OutX MirrorSetup += StartX MirrorSetup
scoreboard players operation OutZ MirrorSetup += StartZ MirrorSetup

execute store result storage temp Mirror.X int 1 run scoreboard players get OutX MirrorSetup
execute store result storage temp Mirror.Y int 1 run scoreboard players get OutY MirrorSetup
execute store result storage temp Mirror.Z int 1 run scoreboard players get OutZ MirrorSetup

data modify storage temp Mirror.id set from storage exigence:dungeon Mirror.mirror_id
data modify storage temp Mirror.reflection set value "YES"
function exigence:mirror/mirrors/place_block with storage temp Mirror

# Place glow lichen under mirror block
#coreboard players remove OutY MirrorSetup 1
#execute store result storage temp Mirror.Y int 1 run scoreboard players get OutY MirrorSetup
#data modify storage temp Mirror.id set value glow_lichen
#function exigence:mirror/mirrors/place_lichen with storage temp Mirror