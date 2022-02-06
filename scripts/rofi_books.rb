#!/usr/bin/env ruby

base_directory = '/mnt/hdd/Documents/'
selected = %x{ fdfind --base-directory #{base_directory} -t f -e pdf -e djvu | rofi -dmenu -i }.strip

unless selected.empty?
  %x{ zathura "#{base_directory}#{selected}" }
end
