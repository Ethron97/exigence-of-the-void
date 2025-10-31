# if LateralPos < i, add one
execute if score Lateral.Pos game.mirror.setup < #i game.mirror.setup run scoreboard players add Lateral.Pos game.mirror.setup 1
# if lateralPos > i, subtract one
execute if score Lateral.Pos game.mirror.setup > #i game.mirror.setup run scoreboard players remove Lateral.Pos game.mirror.setup 1
# placeblock at current pos
function exigence:mirror/mirrors/four_wide_one_path/put_current_block
# call this function again unless lateralpos = i
execute unless score Lateral.Pos game.mirror.setup = #i game.mirror.setup run function exigence:mirror/mirrors/four_wide_one_path/step_lateral