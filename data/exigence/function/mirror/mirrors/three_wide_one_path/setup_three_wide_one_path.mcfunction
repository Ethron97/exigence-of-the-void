# Reset:
function exigence:mirror/mirrors/three_wide_one_path/reset with storage exigence:mirror
data modify storage exigence:mirror mirror set value "three_wide"

# Initialize setup variables
scoreboard players set Start.X game.mirror.setup -417
scoreboard players set Start.Y game.mirror.setup 45
scoreboard players set Start.Z game.mirror.setup -223
scoreboard players set Mod.X game.mirror.setup -1
scoreboard players set Mod.Y game.mirror.setup 0
scoreboard players set Mod.Z game.mirror.setup 2
scoreboard players set Mod2.X game.mirror.setup 2
scoreboard players set Mod2.Z game.mirror.setup 1
scoreboard players set Mirror.X game.mirror.setup -4
scoreboard players set Mirror.Z game.mirror.setup -2

execute store result score Lateral.Pos game.mirror.setup run random value 0..2
scoreboard players set Forward.Pos game.mirror.setup 0
function exigence:mirror/mirrors/three_wide_one_path/put_current_block

scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block
function exigence:mirror/mirrors/three_wide_one_path/new_lateral_pos
function exigence:mirror/mirrors/three_wide_one_path/step_lateral
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block
function exigence:mirror/mirrors/three_wide_one_path/new_lateral_pos
function exigence:mirror/mirrors/three_wide_one_path/step_lateral
scoreboard players add Forward.Pos game.mirror.setup 1
scoreboard players add Mod.Y game.mirror.setup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block
function exigence:mirror/mirrors/three_wide_one_path/new_lateral_pos
function exigence:mirror/mirrors/three_wide_one_path/step_lateral
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/three_wide_one_path/put_current_block