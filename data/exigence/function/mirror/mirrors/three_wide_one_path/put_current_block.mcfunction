# Get lateral offset
scoreboard players operation ForwardStartX MirrorSetup = ModX MirrorSetup
scoreboard players operation ForwardStartY MirrorSetup = StartY MirrorSetup
scoreboard players operation ForwardStartZ MirrorSetup = ModZ MirrorSetup

scoreboard players operation ForwardStartX MirrorSetup *= ForwardPos MirrorSetup
scoreboard players operation ForwardStartZ MirrorSetup *= ForwardPos MirrorSetup

scoreboard players operation ForwardStartX MirrorSetup += StartX MirrorSetup
scoreboard players operation ForwardStartZ MirrorSetup += StartZ MirrorSetup

# If middle row, randomize height
execute if score ForwardPos MirrorSetup matches 2 run execute store result score out Random run random value 0..1
execute if score ForwardPos MirrorSetup matches 2 run scoreboard players operation ForwardStartY MirrorSetup += out Random

# Real section
scoreboard players operation OutX MirrorSetup = Mod2X MirrorSetup
scoreboard players operation OutY MirrorSetup = ModY MirrorSetup
scoreboard players operation OutZ MirrorSetup = Mod2Z MirrorSetup

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
scoreboard players operation OutX MirrorSetup = Mod2X MirrorSetup
scoreboard players operation OutZ MirrorSetup = Mod2Z MirrorSetup

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