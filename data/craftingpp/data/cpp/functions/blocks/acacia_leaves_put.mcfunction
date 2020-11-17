data modify storage cpp:blocks Item.Count set value 1b
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Fire:32767s,Tags:["cpp_leaves","cpp_need_fire"]}
execute as @e[type=armor_stand,tag=cpp_leaves,distance=..0.1,limit=1] run function cpp:blocks/acacia_leaves_tag
