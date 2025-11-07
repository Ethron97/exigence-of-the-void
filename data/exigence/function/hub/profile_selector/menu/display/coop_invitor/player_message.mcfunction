# Call as player who just opened coop/invite menu

## CONSTRAINTS
#   AS player

#=============================================================================================================

tellraw @s [{text:"--------------------------------------"}\
,{text:"\nINVITING PLAYERS:",bold:true,color:"gray"}\
,{text:"\nUse the ",bold:false,color:"gray"},{text:"Invite ",bold:false,color:"yellow"},{text:"button to begin the invitation process.",bold:false,color:"gray"}\
,{text:"\n\nNext, use ",bold:false,color:"gray"},{text:"/trigger SendCoopInvite set ",color:green},{text:"<player code>",color:gold},{text:" \
to invite a friend. Your friend may need to provide their unique player code. They can view it while they are in the profile selector room, or by using '/trigger MyPlayerID'.",color:gray}\
,{text:"\n\nAfter inviting a player, the ",color:gray},{text:"Invite ",color:"yellow"},{text:"button will turn yellow while you wait for a response. The invitation will time out after 30 seconds.",color:gray}\
,{text:"\n\nIf they accept, their name will appear in the menu.",color:gray}\
,{text:"\n\nWhen you are finished inviting friends, click the Confirm button to finish creating the profile.",color:gray}\
]