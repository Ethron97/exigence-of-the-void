# Called by profile_tick
#   If player was logged out during reset_entire_world

## CONSTRAINTS
#   AS player (score not quits=0..)

#====================================================================================================

say Player logged in after world reset

scoreboard players set @s quits 0

# List of all room tags they could have been in
tag @s remove ProfileSelecting
tag @s remove Tutorial
tag @s remove Invited
tag @s remove InvitedBy
tag @s remove Inviteded
tag @s remove SendingInvite
tag @s remove InvitesSent
tag @s remove InviteSent

# Teleport to ship
execute in exigence:hub run tp @s -10.5 202.0 -64.5 -90 0
