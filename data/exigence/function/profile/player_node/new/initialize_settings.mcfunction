# Initialize player settings

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Display last card played in bossbar
scoreboard players set @s career.settings.card_display_bossbar 0

# Display last cards played in sidebar
scoreboard players set @s career.settings.card_display_sidebar 1

# 1 = Item_Smash, 2 = Hud display, 0 = instant (we don't really use hud display anymore so this is basically a toggle)
scoreboard players set @s career.settings.coin_conversion_style 1

# Echo win tracking being node.data.echo.times_chosen / times_won
scoreboard players set @s career.settings.echo_win_tracking 1

scoreboard players set @s career.settings.ravager_glass_break 1

# 0 = full, 1 = efficient, 2 = number
scoreboard players set @s career.settings.resource_actionbar_style 0

# 0 = hidden, 1 = dynamic (only display if resources>0), 2 = always
scoreboard players set @s career.settings.resource_bossbar_style 1

scoreboard players set @s career.settings.return_compass 1

scoreboard players set @s career.settings.show_resource_consume 1

scoreboard players set @s career.settings.show_resource_generate 1

scoreboard players set @s career.settings.show_resource_overflow 0

scoreboard players set @s career.settings.show_resource_underflow 1
