# DEBUG
#say Setting up 45_degree mirror

# Reset
function exigence:mirror/mirrors/45_degree/reset with storage exigence:mirror
data modify storage exigence:mirror mirror set value "45_degree"

# Initialize setup variables
scoreboard players set Start.X game.mirror.setup -431
scoreboard players set Start.Y game.mirror.setup 63
scoreboard players set Start.Z game.mirror.setup -141
scoreboard players set Mod.X game.mirror.setup 2
scoreboard players set Mod.Y game.mirror.setup 0
scoreboard players set Mod.Z game.mirror.setup -2
scoreboard players set Mirror.X game.mirror.setup -4
scoreboard players set Mirror.Z game.mirror.setup 4
# 5 2/3s lines

function exigence:misc/random_2_of_3
scoreboard players operation #out Random = out.a Random
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation #out Random = out.b Random
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add Start.X game.mirror.setup 2
scoreboard players add Start.Z game.mirror.setup 2

function exigence:misc/random_2_of_3
scoreboard players operation #out Random = out.a Random
execute store result score Mod.Y game.mirror.setup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation #out Random = out.b Random
execute store result score Mod.Y game.mirror.setup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add Start.X game.mirror.setup 2
scoreboard players add Start.Z game.mirror.setup 2

function exigence:misc/random_2_of_3
scoreboard players operation #out Random = out.a Random
scoreboard players set Mod.Y game.mirror.setup 1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation #out Random = out.b Random
scoreboard players set Mod.Y game.mirror.setup 1
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add Start.X game.mirror.setup 2
scoreboard players add Start.Z game.mirror.setup 2

function exigence:misc/random_2_of_3
scoreboard players operation #out Random = out.a Random
execute store result score Mod.Y game.mirror.setup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation #out Random = out.b Random
execute store result score Mod.Y game.mirror.setup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3

scoreboard players add Start.X game.mirror.setup 2
scoreboard players add Start.Z game.mirror.setup 2

function exigence:misc/random_2_of_3
scoreboard players operation #out Random = out.a Random
scoreboard players set Mod.Y game.mirror.setup 2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3
scoreboard players operation #out Random = out.b Random
scoreboard players set Mod.Y game.mirror.setup 2
function exigence:mirror/mirrors/45_degree/choose_blocks_2_3



# 4 1/2s
scoreboard players set Start.X game.mirror.setup -429
scoreboard players set Start.Y game.mirror.setup 63
scoreboard players set Start.Z game.mirror.setup -141
scoreboard players set Mod.X game.mirror.setup 4
scoreboard players set Mod.Y game.mirror.setup 0
scoreboard players set Mod.Z game.mirror.setup 0
scoreboard players set Mirror.X game.mirror.setup -6
scoreboard players set Mirror.Z game.mirror.setup 6

execute store result score #out Random run random value 0..1
execute store result score Mod.Y game.mirror.setup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2

scoreboard players set Start.X game.mirror.setup -425
scoreboard players set Start.Y game.mirror.setup 63
scoreboard players set Start.Z game.mirror.setup -137

execute store result score #out Random run random value 0..1
execute store result score Mod.Y game.mirror.setup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2



scoreboard players set Start.X game.mirror.setup -427
scoreboard players set Start.Y game.mirror.setup 63
scoreboard players set Start.Z game.mirror.setup -139
scoreboard players set Mod.X game.mirror.setup 0
scoreboard players set Mod.Y game.mirror.setup 0
scoreboard players set Mod.Z game.mirror.setup -4
scoreboard players set Mirror.X game.mirror.setup -6
scoreboard players set Mirror.Z game.mirror.setup 6

execute store result score #out Random run random value 0..1
execute store result score Mod.Y game.mirror.setup run random value 0..1
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2

scoreboard players set Start.X game.mirror.setup -423
scoreboard players set Start.Y game.mirror.setup 63
scoreboard players set Start.Z game.mirror.setup -135

execute store result score #out Random run random value 0..1
execute store result score Mod.Y game.mirror.setup run random value 1..2
function exigence:mirror/mirrors/45_degree/choose_blocks_1_2