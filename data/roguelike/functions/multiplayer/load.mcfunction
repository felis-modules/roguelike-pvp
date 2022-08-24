## tier list
## Novice 0 - 100
## Silver 100 - 400
## Gold 400 - 700
## Platinum 700 - 800

scoreboard objectives add mp_elo dummy
scoreboard players add @a mp_elo 0

team add rp_mp_novice
team add rp_mp_silver
team add rp_mp_gold
team add rp_mp_platinum

team modify rp_mp_novice color dark_gray
team modify rp_mp_gold color gold
team modify rp_mp_silver color gray
team modify rp_mp_platinum color aqua