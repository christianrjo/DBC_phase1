def blank_board(lines)
 board = []
 lines.times { board << Array.new(lines) }
 put_pieces(board)
end

def put_pieces(board)
  pieces = %w{ Tower Horse Rook King Queen Rook Horse Tower}
  w_pieces =  pieces.map {|e| "W " + e  }
  b_pieces =  pieces.map {|e| "B " + e  }.reverse
  board[0] = w_pieces
  board[7] = b_pieces
  board[1].map! { |e| "W Pawns"  }
  board[6].map! { |e| "B Pawns"  }
  board
end


p blank_board(8)

table = [
             ['Number', 'Name', 'Position', 'Points per Game'],
             ['12', 'Joe Schmo', 'Center', [14, 32, 7, 0, 23]], 
             ['9', ' Ms. Buckets', 'Point Guard', [19, 0, 11, 22, 0]],
             [ '31', 'Harvey Kay', 'Shooting Guard', [0, 30, 16, 0, 25]], 
             ['18', 'Sally Talls', 'Power Forward', [18, 29, 26, 31, 19]],
             ['22', 'MK DiBoux', 'Small Forward', [11, 0, 23, 17, 0]]
            ]

puts table[3][2] == "Shooting Guard"      # outputs true
puts table[1][3] == [14, 32, 7, 0, 23]



