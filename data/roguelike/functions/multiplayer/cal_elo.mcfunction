scoreboard players operation .cal mp_elo = @a[scores={mp_elo_killer=1}] mp_elo
scoreboard players operation .cal mp_elo -= @a[scores={mp_elo_dead=1}] mp_elo

scoreboard players operation .cal mp_elo *= 100 mp_elo
scoreboard players operation .cal mp_elo /= 40 mp_elo

execute if score .cal mp_elo matches ..0 run scoreboard players operation .cal mp_elo *= m1 mp_elo
execute if score .cal mp_elo matches 0..40 run scoreboard players operation .cal mp_elo = 40 mp_elo

tellraw @a[scores={mp_elo_killer=1}] [{"text":"[클래스 PVP] ","color":"gray"},{"text":"ELO +","color":"gray"},{"score":{"name":".cal","objective":"mp_elo"}}]
tellraw @a[scores={mp_elo_dead=1}] [{"text":"[클래스 PVP] ","color":"gray"},{"text":"ELO -","color":"gray"},{"score":{"name":".cal","objective":"mp_elo"},"color":"gray"}]

scoreboard players operation @a[scores={mp_elo_dead=1}] mp_elo -= .cal mp_elo
scoreboard players operation @a[scores={mp_elo_killer=1}] mp_elo += .cal mp_elo

scoreboard players set @a[scores={mp_elo_dead=1}] mp_elo_dead 0
scoreboard players set @a[scores={mp_elo_killer=1}] mp_elo_killer 0