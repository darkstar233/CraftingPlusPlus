advancement revoke @s only cpp:block/smoker
scoreboard players set #block_id cppValue 9
function cpp:misc/loc/pos
execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_smoker"],HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12970000}},{}]}
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos]
