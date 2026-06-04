# Animate rope ladder dropping for the Sentry vault

#====================================================================================================

execute if score game.cancel_load hub.room_misc matches 1 run return 0
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld run function exigence:door/vault/sentry/open_loop