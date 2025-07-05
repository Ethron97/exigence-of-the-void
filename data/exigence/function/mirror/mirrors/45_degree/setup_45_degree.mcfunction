# Reset
function exigence:mirror/mirrors/45_degree/reset with storage exigence:dungeon Mirror
data modify storage temp Mirror.mirror set value "45_degree"

# Initialize setup variables
scoreboard players set StartX MirrorSetup -431
scoreboard players set StartY MirrorSetup 63
scoreboard players set StartZ MirrorSetup -141
scoreboard players set ModX MirrorSetup 2
scoreboard players set ModY MirrorSetup 0
scoreboard players set ModZ MirrorSetup -2
scoreboard players set MirrorX MirrorSetup -4
scoreboard players set MirrorZ MirrorSetup 4
# 5 2/3s lines

function exigence:misc/random_2_of_3
scoreboard players operation out Random = out.a Random
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation out Random = out.b Random
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add StartX MirrorSetup 2 
scoreboard players add StartZ MirrorSetup 2

function exigence:misc/random_2_of_3
scoreboard players operation out Random = out.a Random
execute store result score ModY MirrorSetup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation out Random = out.b Random
execute store result score ModY MirrorSetup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add StartX MirrorSetup 2
scoreboard players add StartZ MirrorSetup 2

function exigence:misc/random_2_of_3
scoreboard players operation out Random = out.a Random
scoreboard players set ModY MirrorSetup 1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation out Random = out.b Random
scoreboard players set ModY MirrorSetup 1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add StartX MirrorSetup 2
scoreboard players add StartZ MirrorSetup 2

function exigence:misc/random_2_of_3
scoreboard players operation out Random = out.a Random
execute store result score ModY MirrorSetup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation out Random = out.b Random
execute store result score ModY MirrorSetup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add StartX MirrorSetup 2
scoreboard players add StartZ MirrorSetup 2

function exigence:misc/random_2_of_3
scoreboard players operation out Random = out.a Random
scoreboard players set ModY MirrorSetup 2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation out Random = out.b Random
scoreboard players set ModY MirrorSetup 2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3



# 4 1/2s
scoreboard players set StartX MirrorSetup -429
scoreboard players set StartY MirrorSetup 63
scoreboard players set StartZ MirrorSetup -141
scoreboard players set ModX MirrorSetup 4
scoreboard players set ModY MirrorSetup 0
scoreboard players set ModZ MirrorSetup 0
scoreboard players set MirrorX MirrorSetup -6
scoreboard players set MirrorZ MirrorSetup 6

execute store result score out Random run random value 0..1
execute store result score ModY MirrorSetup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2

scoreboard players set StartX MirrorSetup -425
scoreboard players set StartY MirrorSetup 63
scoreboard players set StartZ MirrorSetup -137

execute store result score out Random run random value 0..1
execute store result score ModY MirrorSetup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2



scoreboard players set StartX MirrorSetup -427
scoreboard players set StartY MirrorSetup 63
scoreboard players set StartZ MirrorSetup -139
scoreboard players set ModX MirrorSetup 0
scoreboard players set ModY MirrorSetup 0
scoreboard players set ModZ MirrorSetup -4
scoreboard players set MirrorX MirrorSetup -6
scoreboard players set MirrorZ MirrorSetup 6

execute store result score out Random run random value 0..1
execute store result score ModY MirrorSetup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2

scoreboard players set StartX MirrorSetup -423
scoreboard players set StartY MirrorSetup 63
scoreboard players set StartZ MirrorSetup -135

execute store result score out Random run random value 0..1
execute store result score ModY MirrorSetup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2