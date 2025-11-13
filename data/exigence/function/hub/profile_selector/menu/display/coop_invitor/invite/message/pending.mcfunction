# Message the player gets when they invite someone, to let them know how the menu works.

## CONSTRAINTS
#   AS player who send the invite

#=============================================================================================================

tellraw @s [{text:"PENDING INVITE",bold:true,color:"yellow"}\
,{text:"\n - Leave this menu open while you wait for a response to your invitation.",color:"gray",bold:false}\
,{text:"\n - Close this menu or shift click the player head to cancel the invitation.",color:"gray",bold:false}]
