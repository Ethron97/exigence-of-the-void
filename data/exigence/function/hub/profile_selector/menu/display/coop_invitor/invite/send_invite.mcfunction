# Send invite to player

## CONSTRAINTS
#   AS player invited
#   AT player inviting

#=============================================================================================================

## RECEIVER
# Enable /invite receive
# Enable /invite decline

# Infrom
tellraw @s [{text:"You have been invited by ",color:"green"},{selector:"@p[distance=..0.1,tag=InviteCoopSend]",color:"gold"},{text:" to join a co-co profile!",color:"green"}]
playsound entity.player.levelup player @s ~ ~100 ~ 100 1
# Tellraw with click events (TODO)

# Add tag for actionbar  (score might be sufficient enough)
# Scoreboard for "invited" id

#=============================================================================================================
## SENDER
# Tellraw TODO

# Tag for actionbar TODO

# Put pending player name display with countodnw? TODO

# Start countdown?

scoreboard players operation #compare hub.player.profile_selector_id = @s hub.player.profile_selector_id
# Update menu display so the button is yellow
execute as @n[distance=..16,type=item_display,tag=CoopInvitorDisplay,tag=Invite] run function exigence:hub/profile_selector/menu/display/coop_invitor/invitor/set_pending
