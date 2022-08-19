scoreboard objectives add invparse dummy
data merge storage invparse:parsed {}

forceload add -30000000 1602 -30000000 1602
setblock -30000000 -64 1602 yellow_shulker_box
item replace block -30000000 -64 1602 container.0 with acacia_boat