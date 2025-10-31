# Get lateral offset
scoreboard players operation ForwardStart.X game.mirror.setup = Mod.X game.mirror.setup
scoreboard players operation Forward.Start.Y game.mirror.setup = Start.Y game.mirror.setup
scoreboard players operation ForwardStart.Z game.mirror.setup = Mod.Z game.mirror.setup

scoreboard players operation ForwardStart.X game.mirror.setup *= Forward.Pos game.mirror.setup
scoreboard players operation ForwardStart.Z game.mirror.setup *= Forward.Pos game.mirror.setup

scoreboard players operation ForwardStart.X game.mirror.setup += Start.X game.mirror.setup
scoreboard players operation ForwardStart.Z game.mirror.setup += Start.Z game.mirror.setup



# Real section
scoreboard players operation Out.X game.mirror.setup = Mod2.X game.mirror.setup
scoreboard players operation Out.Y game.mirror.setup = Mod.Y game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup = Mod2.Z game.mirror.setup

scoreboard players operation Out.X game.mirror.setup *= Lateral.Pos game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup *= Lateral.Pos game.mirror.setup

scoreboard players operation Out.X game.mirror.setup += ForwardStart.X game.mirror.setup
scoreboard players operation Out.Y game.mirror.setup += Forward.Start.Y game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup += ForwardStart.Z game.mirror.setup

execute store result storage exigence:mirror X int 1 run scoreboard players get Out.X game.mirror.setup
execute store result storage exigence:mirror Y int 1 run scoreboard players get Out.Y game.mirror.setup
execute store result storage exigence:mirror Z int 1 run scoreboard players get Out.Z game.mirror.setup

data modify storage exigence:mirror current_id set from storage exigence:mirror real_id
data modify storage exigence:mirror reflection set value "NO"
function exigence:mirror/mirrors/place_block with storage exigence:mirror

# Mirror section
scoreboard players operation Out.X game.mirror.setup = Mod2.X game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup = Mod2.Z game.mirror.setup

scoreboard players operation Out.X game.mirror.setup *= Lateral.Pos game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup *= Lateral.Pos game.mirror.setup

scoreboard players operation Out.X game.mirror.setup *= -1 Random
scoreboard players operation Out.Z game.mirror.setup *= -1 Random

scoreboard players operation Out.X game.mirror.setup += Mirror.X game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup += Mirror.Z game.mirror.setup

scoreboard players operation Out.X game.mirror.setup += ForwardStart.X game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup += ForwardStart.Z game.mirror.setup

execute store result storage exigence:mirror X int 1 run scoreboard players get Out.X game.mirror.setup
execute store result storage exigence:mirror Y int 1 run scoreboard players get Out.Y game.mirror.setup
execute store result storage exigence:mirror Z int 1 run scoreboard players get Out.Z game.mirror.setup

data modify storage exigence:mirror current_id set from storage exigence:mirror mirror_id
data modify storage exigence:mirror reflection set value "YES"
function exigence:mirror/mirrors/place_block with storage exigence:mirror