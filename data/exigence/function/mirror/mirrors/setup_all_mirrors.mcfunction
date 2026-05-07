# Generate randomized mirror parkours

## CONSTRAINTS
#   IN minecraft;overworld

#====================================================================================================

execute if score toggle.mirror debug matches 1 if score debug.level debug matches 3.. run say (D3) Setting up all mirrors

function exigence:mirror/mirrors/45_degree/setup_45_degree
function exigence:mirror/mirrors/four_wide_one_path/setup_four_wide_one_path
function exigence:mirror/mirrors/intersection/setup_intersection
function exigence:mirror/mirrors/three_wide_one_path/setup_three_wide_one_path
function exigence:mirror/mirrors/laboratory/setup
function exigence:mirror/mirrors/stairs/setup

# Reveal number of starting mirrors based on modifier
execute if score mod.revealed_mirrors game.modifiers matches 1.. run function exigence:mirror/mirrors/setup_revealed_mirrors