execute as @a[scores={msg_deathcount=1}] run function roguelike:multiplayer/dead
execute as @a[scores={msg_killcount=1}] run function roguelike:multiplayer/killer
function roguelike:multiplayer/cal_elo