# Returns this player's player id

tellraw @s [{text:"Your player ID is: "},{score:{name:"@s",objective:"career.player_id"}}]

# Reset trigger score
scoreboard players reset @s MyPlayerID
scoreboard players enable @s MyPlayerID
