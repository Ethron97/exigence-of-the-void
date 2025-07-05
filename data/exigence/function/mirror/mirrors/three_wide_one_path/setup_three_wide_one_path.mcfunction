# Reset:
function exigence:mirror/mirrors/three_wide_one_path/reset with storage exigence:dungeon Mirror
data modify storage temp Mirror.mirror set value "three_wide"

# Initialize setup variables
scoreboard players set StartX MirrorSetup -417
scoreboard players set StartY MirrorSetup 45
scoreboard players set StartZ MirrorSetup -223
scoreboard players set ModX MirrorSetup -1
scoreboard players set ModY MirrorSetup 0
scoreboard players set ModZ MirrorSetup 2
scoreboard players set Mod2X MirrorSetup 2
scoreboard players set Mod2Z MirrorSetup 1
scoreboard players set MirrorX MirrorSetup -4
scoreboard players set MirrorZ MirrorSetup -2

execute store result score LateralPos MirrorSetup run random value 0..2
scoreboard players set ForwardPos MirrorSetup 0
function exigence:mirror/mirrors/three_wide_one_path/put_current_block

scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block
function exigence:mirror/mirrors/three_wide_one_path/new_lateral_pos
function exigence:mirror/mirrors/three_wide_one_path/step_lateral
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block
function exigence:mirror/mirrors/three_wide_one_path/new_lateral_pos
function exigence:mirror/mirrors/three_wide_one_path/step_lateral
scoreboard players add ForwardPos MirrorSetup 1
scoreboard players add ModY MirrorSetup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block
function exigence:mirror/mirrors/three_wide_one_path/new_lateral_pos
function exigence:mirror/mirrors/three_wide_one_path/step_lateral
scoreboard players add ForwardPos MirrorSetup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block