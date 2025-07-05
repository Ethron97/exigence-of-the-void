# Reset:
function exigence:mirror/mirrors/intersection/reset with storage exigence:dungeon Mirror
data modify storage temp Mirror.mirror set value "intersection"

# Initialize setup variables
scoreboard players set StartX MirrorSetup -434
scoreboard players set StartY MirrorSetup 61
scoreboard players set StartZ MirrorSetup -219
scoreboard players set ModX MirrorSetup 1
scoreboard players set ModY MirrorSetup 0
scoreboard players set ModZ MirrorSetup 2
scoreboard players set Mod2X MirrorSetup -2
scoreboard players set Mod2Z MirrorSetup 1
scoreboard players set MirrorX MirrorSetup 4
scoreboard players set MirrorZ MirrorSetup -2

execute store result score LateralPos MirrorSetup run random value 0..2

scoreboard players set ForwardPos MirrorSetup 0
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players remove ModY MirrorSetup 1
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block


execute store result score out Random run random value -1..1
scoreboard players operation LateralPos MirrorSetup += out Random
execute if score LateralPos MirrorSetup matches ..-1 run scoreboard players set LateralPos MirrorSetup 1
execute if score LateralPos MirrorSetup matches 3.. run scoreboard players set LateralPos MirrorSetup 1

function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players remove ModY MirrorSetup 1
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block


execute store result score ForwardPos MirrorSetup run random value 2..4
scoreboard players set LateralPos MirrorSetup 1
scoreboard players set ModY MirrorSetup -1

function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add LateralPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add LateralPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add LateralPos MirrorSetup 1
function exigence:mirror/mirrors/intersection/put_current_block