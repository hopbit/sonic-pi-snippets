# key: smp
# point_line: 0
# point_index: 0
# --
# Print list of all SPI samples
sample_groups.each do |s|
  puts s
  sample_names(s).each do |n|
    puts "- #{n}"
  end
end
