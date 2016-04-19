# key: wrug12
# point_line: 0
# point_index: 0
# --

# WRUG 12 ------------------------------
# na nasza melodie mozemy nalozyc efekt

with_fx :wobble do
	loop do
	  play scale(:c4, :major).choose
	  sleep [0.125, 0.25, 0.5].choose
	end
end

