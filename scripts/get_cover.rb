get_files = Dir.entries('./test').select { |f| File.file? File.join('./test', f) }

beginning = Time.now

threads = []
get_files.each do |file|
  threads << Thread.new do
    puts file
    %x[pdftoppm ./test/"#{file}" ./test/"#{file}" -png -singlefile]
  end
end
threads.each(&:join)


# threadless
# get_files.each do |file|
#   puts file
#   %x[pdftoppm ./test/"#{file}" ./test/"#{file}" -png -singlefile]
# end

endof = Time.now

puts endof - beginning
