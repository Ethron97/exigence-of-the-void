## INPUT
#   INT x
#   TEXT COMPONENT icon (eg {sprite:"",atlas:"",color:""})
#   TEXT COMPONENT difficulty
#   TEXT COMPONENT is_coop

#====================================================================================================

$team modify Player_$(x) prefix [$(icon),$(difficulty),$(is_coop)," "]