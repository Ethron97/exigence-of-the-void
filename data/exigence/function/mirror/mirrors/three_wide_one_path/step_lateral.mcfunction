# if LateralPos < i, add one
execute if score LateralPos MirrorSetup < i MirrorSetup run scoreboard players add LateralPos MirrorSetup 1
# if lateralPos > i, subtract one
execute if score LateralPos MirrorSetup > i MirrorSetup run scoreboard players remove LateralPos MirrorSetup 1
# placeblock at current pos
function exigence:mirror/mirrors/three_wide_one_path/put_current_block
# call this function again unless lateralpos = i
execute unless score LateralPos MirrorSetup = i MirrorSetup run function exigence:mirror/mirrors/three_wide_one_path/step_lateral