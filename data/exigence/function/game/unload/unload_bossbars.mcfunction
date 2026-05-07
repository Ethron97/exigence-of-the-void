# Unload/hide all game bossbars

#====================================================================================================

# Hide bossbar(s)
function exigence:bossbar/deck/hide
function exigence:bossbar/last_card/hide
function exigence:bossbar/resource/hide
function exigence:bossbar/objective/hide

# Hide trial bossbars in case game ended while one was active
bossbar set exigence:trial_bolt visible false
bossbar set exigence:trial_flow visible false
bossbar set exigence:trial_eye visible false
bossbar set exigence:trial_silence visible false
bossbar set exigence:trial_dune visible false
bossbar set exigence:trial_spire visible false