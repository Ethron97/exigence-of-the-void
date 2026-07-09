# Update title macro

## INPUT
#   STR level_1
#   STR gap_1
#   STR level_2
#   STR gap_2
#   STR level_3
#   STR gap_3
#   STR level_4

#====================================================================================================

$bossbar set exigence:objective name [{text:"Deck: ",color:"gray"}\
,{"score":{"name":"resource.green.consume","objective":"deck.analysis"},color:"$(green)"}," "\
,{"score":{"name":"resource.red.consume","objective":"deck.analysis"},color:"$(red)"}," "\
,{"score":{"name":"resource.aqua.consume","objective":"deck.analysis"},color:"$(aqua)"}\
,{text:"  |  ",color:"dark_gray"},{text:"Objectives: ",color:"gray"},$(level_1),$(gap_1),$(level_2),$(gap_2),$(level_3),$(gap_3),$(level_4)]