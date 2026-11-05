# Called when player clicks trial button

## CONSTRAINTS
#   AS player

#====================================================================================================

# Is trial in progress?
execute if score hub.spire.trial trial.status matches 1 run return run tellraw @s [{text:"Trial in progress",color:"red"}]
#----------------------------------------------------------------------------------------------------
# Else:
function exigence:hub/hub_trials/start/spire_trial
