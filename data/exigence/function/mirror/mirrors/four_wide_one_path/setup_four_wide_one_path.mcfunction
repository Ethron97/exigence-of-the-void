# Reset:
function exigence:mirror/mirrors/four_wide_one_path/reset with storage exigence:mirror
data modify storage exigence:mirror mirror set value "four_wide"

# Initialize setup variables
scoreboard players set Start.X game.mirror.setup -420
scoreboard players set Start.Y game.mirror.setup 77
scoreboard players set Start.Z game.mirror.setup -169
scoreboard players set Mod.X game.mirror.setup -1
scoreboard players set Mod.Y game.mirror.setup 0
scoreboard players set Mod.Z game.mirror.setup -2
scoreboard players set Mirror.X game.mirror.setup 2
scoreboard players set Mirror.Z game.mirror.setup 4

scoreboard players set Lateral.Pos game.mirror.setup 0
scoreboard players set Forward.Pos game.mirror.setup 0
scoreboard players set #i game.mirror.setup 0

# First lateral movement
execute store result score Lateral.Pos game.mirror.setup run random value 0..3

# put starting block
function exigence:mirror/mirrors/four_wide_one_path/put_current_block

scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/four_wide_one_path/put_current_block

function exigence:mirror/mirrors/four_wide_one_path/new_lateral_pos

function exigence:mirror/mirrors/four_wide_one_path/step_lateral

scoreboard players add Mod.Y game.mirror.setup 1
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/four_wide_one_path/put_current_block
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/four_wide_one_path/put_current_block

function exigence:mirror/mirrors/four_wide_one_path/new_lateral_pos

function exigence:mirror/mirrors/four_wide_one_path/step_lateral

scoreboard players add Mod.Y game.mirror.setup 1
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/four_wide_one_path/put_current_block
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/four_wide_one_path/put_current_block

function exigence:mirror/mirrors/four_wide_one_path/new_lateral_pos

function exigence:mirror/mirrors/four_wide_one_path/step_lateral


scoreboard players add Mod.Y game.mirror.setup 1
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/four_wide_one_path/put_current_block