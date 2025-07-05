# Sub-function of interaction -> ring_resolve -> ring
#   Called if player does not have smash artifact

#==============================================================================================================

# DEBUG
#say Trigger ring bll

# Increase Red resource by 1
execute as @p[tag=Ringing] run function exigence:resources/try_generate {green:0,red:1,aqua:0}
