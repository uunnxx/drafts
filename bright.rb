def get_brightness
  %x{xrandr --verbose | grep Brightness  | grep -m1 -o '[0-9].*'}.to_f
end

def send_notification
  bar = %x{seq -s "░" 0 #{get_brightness / 0.035} | sed 's/[0-9]//g'}
  %x{dunstify -r 99999 -u low "    #{bar.chomp}"}
end

def check_brightness
  if get_brightness < 1.0
    true
  else
    false
  end
end

def brightness(argument)
  current_brightness = get_brightness
  if argument && current_brightness < 1.0
    current_brightness + 0.1
  elsif !argument
    current_brightness - 0.1 unless get_brightness < 0.1
  end
  puts current_brightness
end

def set_new_value(arg)
  %x{xrandr --output HDMI-A-0 --brightness #{brightness(arg)}}
  %x{xrandr --output DVI-D-0 --brightness #{brightness(arg)}}
end

arg = ARGV[0].to_s.downcase
case arg
when "up"
  set_new_value(true)
  send_notification
when "down"
  set_new_value(false)
  send_notification
end
