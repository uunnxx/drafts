# ttt = "@badge-info=;badges=broadcaster/1;client-nonce=c09164aef1acc7dea46b092503cfd2ab;color=;display-name=;emotes=;flags=;id=b83c960b-65c8-4b0b-89b2-49d745e71a60;mod=0;room-id=717402480;subscriber=0;tmi-sent-ts=1632945345747;turbo=0;user-id=717402480;user-type= :bakastreamer!bakastreamer@bakastreamer.tmi.twitch.tv PRIVMSG #bakastreamer :tt"
# ttt = "@badge-info=;badges=broadcaster/1;client-nonce=c09164aef1acc7dea46b092503cfd2ab;color=;display-name=バカストリーマ;emotes=;flags=;id=b83c960b-65c8-4b0b-89b2-49d745e71a60;mod=0;room-id=717402480;subscriber=0;tmi-sent-ts=1632945345747;turbo=0;user-id=717402480;user-type= :bakastreamer!bakastreamer@bakastreamer.tmi.twitch.tv PRIVMSG #bakastreamer :tt"

# puts ttt.class

# aaa = ttt.split(';')
# aaa.select do |elemenet, index|
#   if elemenet.start_with? 'display-name'
#     dn = elemenet.split('=')[1]
#     dn unless dn == nil
#   end
# end


# pp %x{ echo $(cat e) }

# pp %x{mpvctl play}


# a = "!im string for"
# pp a[3..]


# raw_data = "@badge-info=;badges=broadcaster/1;client-nonce=6fb7305c4e6059147a6b7631ab0da099;color=;display-name=バカストリーマ;emotes=;flags=;id=21afbe73-4468-4516-8ce5-09effc241b1a;mod=0;room-id=717402480;subscriber=0;tmi-sent-ts=1632967944313;turbo=0;user-id=717402480;user-type= :bakastreamer!bakastreamer@bakastreamer.tmi.twitch.tv PRIVMSG #bakastreamer :@std_pow \"TAG TEST\""

# raw = "@badge-info=;badges=broadcaster/1;client-nonce=db8f8accc8d4323e403324b6ec34cd82;color=;display-name=カストリーマ;emotes=;flags=;id=ffc6246a-32be-4c44-bb74-7d20f735f402;mod=0;room-id=717402480;subscriber=0;tmi-sent-ts=1632968284138;turbo=0;user-id=717402480;user-type= :bakastreamer!bakastreamer@bakastreamer.tmi.twitch.tv PRIVMSG #bakastreamer :TEST STRING @std_pow TAG :@std_pow TED :@std_pow TEST TAG"

# pp raw.split(';')
# payload = raw.split(';')[-1].split('PRIVMSG')[-1]
# tt =  /@\w+/g.match(payload).to_s
# tt = payload.scan(/@\w+/)

# pp payload

# pp payload
# if tt.empty?
#   pp "true"
# end


# puts "-----------------------------------------------"
# tt = tt.join(',')
# # pp tt.length
# tt.uniq!
# tt.each_with_index do |item, index|

#   tmp.gsub!(item, "<b>#{item}</b>")
# end
# puts "-----------------------------------------------"

# pp = 'aaaaaaaeeeeeekbbbbbbbbass etusao tehsu no@std_pow  aoesthu saoeth usaonthe @std_pow'.to_s
# pp tmp
tmp = "@std_pow hi @バカストリーマ test test @バカストリーマ"
tags = tmp.scan(/(@\w+|@\W+)/)

tags.uniq!

pp tags

if tags.length > 1
  tags.each do |tag|
    tmp_tag = tag.join(',')
    pp tmp_tag.class
    tmp.gsub!(tmp_tag, "<b>#{tmp_tag}</b>")
  end
else
  tag = tags.join(',')
  tmp.sub!(tag, "<b>#{tag}</b>")
end

pp tmp
pp tag

# binding.pry

# %x{ dunstify -u normal -r 2222 "test" "#{tmp}" }

# puts tt.sub(tt, "<b>#{tt}</b>").to_s

# pp tt.gsub("#{tt}", "<b>#{tt}</b")
# pp raw.split(';')[4].split('=')[-1]

require_relative ''

reqr

require_relative 'm'

protected

begin
  
rescue Erro => e
end

begin
  
rescue StandardError => e
end


require_relative ''


require_relative ''


until some_cond
  do_something()
end

begin
  do_something
rescue StandardError => e
end

class Main
  def initialize(**kwargs)
    2021-10-06 06:26:41+0300
    2021-10-06 06:26:59+0300
    2021-10-06 06:27:05+0300
    2021-10-06 06:27:15+0300

    2021-10-06 06:27:19+0300
  end

end

class Main < Object
  def initialize(arg)
    do_something
  end
end



require ''
require_relative ''

require_relative ''

# => 

require_relative ''


# encoding: utf-8
#
#
enc 

results.report(':') { TESTS.times {  } }
results.report(':') { TESTS.times {  } }


