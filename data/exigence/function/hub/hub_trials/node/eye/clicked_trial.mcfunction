# Called when player clicks trial button

## CONSTRAINTS
#   AS player

#====================================================================================================

# Is trial in progress?
execute if score hub.eye.trial trial.status matches 1 run return run tellraw @s [{text:"Trial in progress",color:"red"}]
#----------------------------------------------------------------------------------------------------
# Else:
function exigence:hub/hub_trials/start/eye_trial
