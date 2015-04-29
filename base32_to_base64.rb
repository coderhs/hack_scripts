TABLE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"
base_32 = 'NBQWG23FOJSWC4TUNA'
puts [base_32.chars.map { |s| TABLE.index(s) }.map { |s| s.to_s(2) }.map { |s| "0"*(5-s.length)+s}.join.chars.each_slice(8).map(&:join).map { |i| i.to_i(2) }.map { |s| s.chr }.join.strip].pack('m')
