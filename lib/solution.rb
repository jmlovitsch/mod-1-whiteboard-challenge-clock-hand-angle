

def clock_angle(time)
    h_m = time.split(':')
    hour_angle = (h_m[0].to_i * 30) + (h_m[1].to_i * 0.5)
    if hour_angle == 360.0
        hour_angle = 0
    end
    minute_angle = h_m[1].to_i * 6
    if hour_angle - minute_angle < 0
        (hour_angle - minute_angle) + 360
    else
        hour_angle - minute_angle
    end
end
