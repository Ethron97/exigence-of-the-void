# DEBUG
#say Setting up all mirrors

function exigence:mirror/mirrors/45_degree/setup_45_degree
function exigence:mirror/mirrors/four_wide_one_path/setup_four_wide_one_path
function exigence:mirror/mirrors/intersection/setup_intersection
function exigence:mirror/mirrors/three_wide_one_path/setup_three_wide_one_path
function exigence:mirror/mirrors/laboratory/setup
function exigence:mirror/mirrors/stairs/setup

# Reset tag
tag @e[type=armor_stand,tag=RevealedMirror] remove RevealedMirror

# Reveal number of starting mirrors based on modifier
execute if score RevealedMirrors Modifiers matches 1.. as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score RevealedMirrors Modifiers matches 2.. as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score RevealedMirrors Modifiers matches 3.. as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score RevealedMirrors Modifiers matches 4.. as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
