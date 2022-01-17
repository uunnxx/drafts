#!/usr/bin/env ruby


dirname = `pwd`.strip
args = ''

if ARGV.empty?
  select = %x{ fdfind -t f | fzf }.strip
else
  ARGV.each do |arg|
    args << "-e #{arg} "
  end
  select = %x{ fdfind -t f #{args} | fzf }.strip
end

unless select.empty?
  %x{ zathura #{dirname}/\"#{select}\" }
end
