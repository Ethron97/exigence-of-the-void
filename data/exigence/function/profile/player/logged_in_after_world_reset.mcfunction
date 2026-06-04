# Called by profile_tick
#   If player was logged out during reset_entire_world

## CONSTRAINTS
#   AS player (score not quits=0..)

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3 Profile) Player logged in after world reset

team leave @s

scoreboard players set @s quits 0

# Have to clear because they may have outdated armor
clear @s

# List of all room tags they could have been in
tag @s remove ActivePlayer
tag @s remove LockerRoom
tag @s remove Predungeon
tag @s remove ProfileSelecting
tag @s remove Tutorial
tag @s remove Invited
tag @s remove InvitedBy
tag @s remove Inviteded
tag @s remove SendingInvite
tag @s remove InvitesSent
tag @s remove InviteSent
tag @s remove Carrying
tag @s remove CurrentlyReflecting

# Teleport to ship
execute in exigence:hub run tp @s -10.5 202.0 -64.5 -90 0
