
# Nominated

setblock 184 100 2 dark_oak_wall_sign[facing=east]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Rock","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 1"}}','{"text":""}','{"text":""}']}} replace
setblock 184 100 1 dark_oak_wall_sign[facing=east]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Paper","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 2"}}','{"text":""}','{"text":""}']}} replace
setblock 184 100 0 dark_oak_wall_sign[facing=east]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Scissors","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 3"}}','{"text":""}','{"text":""}']}} replace

setblock 184 99 2 dark_oak_wall_sign[facing=east]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Right click a sign"}','{"text":"to choose!"}','{"text":""}']}} replace

setblock 184 99 0 dark_oak_wall_sign[facing=east]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Right click to lock"}','{"text":"in your choice!","clickEvent":{"action":"run_command","value":"/trigger ConfirmRoshamboLock set 1"}}','{"text":""}']}} replace

# Nominator

setblock 150 100 0 dark_oak_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Rock","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 1"}}','{"text":""}','{"text":""}']}} replace
setblock 150 100 1 dark_oak_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Paper","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 2"}}','{"text":""}','{"text":""}']}} replace
setblock 150 100 2 dark_oak_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Scissors","clickEvent":{"action":"run_command","value":"/trigger Roshambo set 3"}}','{"text":""}','{"text":""}']}} replace

setblock 150 99 0 dark_oak_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Right click a sign"}','{"text":"to choose!"}','{"text":""}']}} replace

setblock 150 99 2 dark_oak_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Right click to lock"}','{"text":"in your choice!","clickEvent":{"action":"run_command","value":"/trigger ConfirmRoshamboLock set 1"}}','{"text":""}']}} replace

