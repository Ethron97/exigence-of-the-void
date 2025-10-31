

scoreboard players operation Out.X game.mirror.setup = Mod.X game.mirror.setup
scoreboard players operation Out.Y game.mirror.setup = Mod.Y game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup = Mod.Z game.mirror.setup

scoreboard players operation Out.X game.mirror.setup *= #out Random
scoreboard players operation Out.Z game.mirror.setup *= #out Random

scoreboard players operation Out.X game.mirror.setup += Start.X game.mirror.setup
scoreboard players operation Out.Y game.mirror.setup += Start.Y game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup += Start.Z game.mirror.setup

execute store result storage exigence:mirror X int 1 run scoreboard players get Out.X game.mirror.setup
execute store result storage exigence:mirror Y int 1 run scoreboard players get Out.Y game.mirror.setup
execute store result storage exigence:mirror Z int 1 run scoreboard players get Out.Z game.mirror.setup

data modify storage exigence:mirror current_id set from storage exigence:mirror real_id
data modify storage exigence:mirror reflection set value "NO"
function exigence:mirror/mirrors/place_block with storage exigence:mirror

scoreboard players operation Out.X game.mirror.setup = Mod.X game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup = Mod.Z game.mirror.setup

scoreboard players operation Out.X game.mirror.setup *= #out Random
scoreboard players operation Out.Z game.mirror.setup *= #out Random

scoreboard players operation Out.X game.mirror.setup *= -1 Random
scoreboard players operation Out.Z game.mirror.setup *= -1 Random

scoreboard players operation Out.X game.mirror.setup += Mirror.X game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup += Mirror.Z game.mirror.setup

scoreboard players operation Out.X game.mirror.setup += Start.X game.mirror.setup
scoreboard players operation Out.Z game.mirror.setup += Start.Z game.mirror.setup

execute store result storage exigence:mirror X int 1 run scoreboard players get Out.X game.mirror.setup
execute store result storage exigence:mirror Y int 1 run scoreboard players get Out.Y game.mirror.setup
execute store result storage exigence:mirror Z int 1 run scoreboard players get Out.Z game.mirror.setup

data modify storage exigence:mirror current_id set from storage exigence:mirror mirror_id
data modify storage exigence:mirror reflection set value "YES"
function exigence:mirror/mirrors/place_block with storage exigence:mirror
