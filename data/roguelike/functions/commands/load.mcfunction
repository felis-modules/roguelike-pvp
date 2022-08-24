
scoreboard objectives add slayer trigger
scoreboard objectives add paladin trigger
scoreboard objectives add archer trigger
scoreboard objectives add nuker trigger
scoreboard objectives add lancer trigger
scoreboard objectives add mercenary trigger
scoreboard objectives add get_red trigger
scoreboard objectives add get_blue trigger
scoreboard objectives add show_deathmsg trigger
scoreboard objectives add show_cmdfeeback trigger

scoreboard objectives add give_mana trigger
scoreboard objectives add settier trigger

scoreboard objectives add cmd_armor_state dummy
scoreboard objectives add cmd_state_givemana dummy
scoreboard objectives add cmd_send_feedback dummy
scoreboard players add .state cmd_send_feedback 0
scoreboard players add @a cmd_armor_state 0
scoreboard players add @a cmd_state_givemana 0
scoreboard players set .1 cmd_state_givemana 1

scoreboard players set @a slayer 0
scoreboard players set @a paladin 0
scoreboard players set @a archer 0
scoreboard players set @a nuker 0
scoreboard players set @a mercenary 0
scoreboard players set @a lancer 0
scoreboard players set @a get_red 0
scoreboard players set @a get_blue 0

scoreboard players set @a give_mana 0

scoreboard players enable @a show_cmdfeeback
scoreboard players enable @a show_deathmsg
scoreboard players enable @a slayer
scoreboard players enable @a paladin
scoreboard players enable @a archer
scoreboard players enable @a nuker
scoreboard players enable @a mercenary
scoreboard players enable @a lancer
scoreboard players enable @a get_red
scoreboard players enable @a get_blue
scoreboard players enable @a give_mana
scoreboard players enable @a settier