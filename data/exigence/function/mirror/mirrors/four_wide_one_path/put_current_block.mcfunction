# Get forward offset
scoreboard players set ForwardStartX MirrorSetup 2
scoreboard players operation ForwardStartY MirrorSetup = StartY MirrorSetup
scoreboard players set ForwardStartZ MirrorSetup -1

scoreboard players operation ForwardStartX MirrorSetup *= ForwardPos MirrorSetup
scoreboard players operation ForwardStartZ MirrorSetup *= ForwardPos MirrorSetup

scoreboard players operation ForwardStartX MirrorSetup += StartX MirrorSetup
scoreboard players operation ForwardStartZ MirrorSetup += StartZ MirrorSetup


# Real section
scoreboard players operation OutX MirrorSetup = ModX MirrorSetup
scoreboard players operation OutY MirrorSetup = ModY MirrorSetup
scoreboard players operation OutZ MirrorSetup = ModZ MirrorSetup

scoreboard players operation OutX MirrorSetup *= LateralPos MirrorSetup
scoreboard players operation OutZ MirrorSetup *= LateralPos MirrorSetup

scoreboard players operation OutX MirrorSetup += ForwardStartX MirrorSetup
scoreboard players operation OutY MirrorSetup += ForwardStartY MirrorSetup
scoreboard players operation OutZ MirrorSetup += ForwardStartZ MirrorSetup

execute store result storage exigence:mirror X int 1 run scoreboard players get OutX MirrorSetup
execute store result storage exigence:mirror Y int 1 run scoreboard players get OutY MirrorSetup
execute store result storage exigence:mirror Z int 1 run scoreboard players get OutZ MirrorSetup

data modify storage exigence:mirror current_id set from storage exigence:mirror real_id
data modify storage exigence:mirror reflection set value "NO"
function exigence:mirror/mirrors/place_block with storage exigence:mirror

# Mirror section
scoreboard players operation OutX MirrorSetup = ModX MirrorSetup
scoreboard players operation OutZ MirrorSetup = ModZ MirrorSetup

scoreboard players operation OutX MirrorSetup *= LateralPos MirrorSetup
scoreboard players operation OutZ MirrorSetup *= LateralPos MirrorSetup

scoreboard players operation OutX MirrorSetup *= -1 Random
scoreboard players operation OutZ MirrorSetup *= -1 Random

scoreboard players operation OutX MirrorSetup += MirrorX MirrorSetup
scoreboard players operation OutZ MirrorSetup += MirrorZ MirrorSetup

scoreboard players operation OutX MirrorSetup += ForwardStartX MirrorSetup
scoreboard players operation OutZ MirrorSetup += ForwardStartZ MirrorSetup

execute store result storage exigence:mirror X int 1 run scoreboard players get OutX MirrorSetup
execute store result storage exigence:mirror Y int 1 run scoreboard players get OutY MirrorSetup
execute store result storage exigence:mirror Z int 1 run scoreboard players get OutZ MirrorSetup

data modify storage exigence:mirror current_id set from storage exigence:mirror mirror_id
data modify storage exigence:mirror reflection set value "YES"
function exigence:mirror/mirrors/place_block with storage exigence:mirror