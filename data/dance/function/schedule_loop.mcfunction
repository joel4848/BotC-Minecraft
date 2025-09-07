# say cum loop running
# Update the dancefloor glass
function dance:update_floor

# Update the light layer. We assume loop still active from above STOP condition. 
function dance:update_lights

# schedule this function to activate again in 1 second time
execute if score STOP dance_settings matches 0 run schedule function dance:schedule_loop 1s
