## tier list 올라갈때마다 구간 200씩 증가
## Novice
## Silver
## Gold
## Platinum

scoreboard objectives add mp_elo dummy
scoreboard objectives add mp_elo_killer dummy
scoreboard objectives add mp_elo_dead dummy
scoreboard players add @a mp_elo 0
scoreboard players set 40 mp_elo 40
scoreboard players set 100 mp_elo 100
scoreboard players set m1 mp_elo -1

team add rp_mp_novice
team add rp_mp_silver
team add rp_mp_gold
team add rp_mp_platinum

team modify rp_mp_novice color dark_gray
team modify rp_mp_gold color gold
team modify rp_mp_silver color gray
team modify rp_mp_platinum color aqua