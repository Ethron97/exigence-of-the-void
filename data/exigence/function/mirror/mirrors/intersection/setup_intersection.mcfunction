# Reset:
function exigence:mirror/mirrors/intersection/reset with storage exigence:mirror
data modify storage exigence:mirror mirror set value "intersection"

# Initialize setup variables
scoreboard players set Start.X game.mirror.setup -434
scoreboard players set Start.Y game.mirror.setup 61
scoreboard players set Start.Z game.mirror.setup -219
scoreboard players set Mod.X game.mirror.setup 1
scoreboard players set Mod.Y game.mirror.setup 0
scoreboard players set Mod.Z game.mirror.setup 2
scoreboard players set Mod2.X game.mirror.setup -2
scoreboard players set Mod2.Z game.mirror.setup 1
scoreboard players set Mirror.X game.mirror.setup 4
scoreboard players set Mirror.Z game.mirror.setup -2

execute store result score Lateral.Pos game.mirror.setup run random value 0..2

scoreboard players set Forward.Pos game.mirror.setup 0
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players remove Mod.Y game.mirror.setup 1
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block


execute store result score #out Random run random value -1..1
scoreboard players operation Lateral.Pos game.mirror.setup += #out Random
execute if score Lateral.Pos game.mirror.setup matches ..-1 run scoreboard players set Lateral.Pos game.mirror.setup 1
execute if score Lateral.Pos game.mirror.setup matches 3.. run scoreboard players set Lateral.Pos game.mirror.setup 1

function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players remove Mod.Y game.mirror.setup 1
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add Forward.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block


execute store result score Forward.Pos game.mirror.setup run random value 2..4
scoreboard players set Lateral.Pos game.mirror.setup 1
scoreboard players set Mod.Y game.mirror.setup -1

function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add Lateral.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add Lateral.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block
scoreboard players add Lateral.Pos game.mirror.setup 1
function exigence:mirror/mirrors/intersection/put_current_block