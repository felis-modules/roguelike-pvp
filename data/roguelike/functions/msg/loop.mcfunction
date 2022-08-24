execute if entity @s[scores={msg_deathcount=1..}] if entity @s[scores={msg_killcount=1..}] run function roguelike:msg/cal

scoreboard players set @a msg_deathcount 0
scoreboard players set @a msg_killcount 0