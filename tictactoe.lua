
local new_board = {{" ", "o", "x"}, {"x", "o", " "}, {"x", "o", " "}}

function print_instructions()
  print("this is tic tac toe you can either be x or o,\n if you get three x's or o's in a row you win")
  
  end
  
function put_x(board, row, col)
   if board[row][col] == " " then
          board[row][col] = "x"
       end
end

function put_o(board, row, col)
  if board[row][col] == " " then
    board[row][col] = "o"
  end
end


function play_turn(player_turn)
  
  end



function check_winner()
end


function print_winner(player)
  
  if player == 1 then
    print("player one won please stand on the podium")
  elseif player == 2 then
    print("player two won please stand on the podium")
  end
  


end




function print_board(board)
   for row  = 1, 3 do
      for col = 1, 3 do
	 io.write(board[row][col])
	 if col ~= 3 then
	    io.write("|")
	 end
      end

      io.write("\n")
      
      if row ~= 3 then
	 io.write("-----")
      end
      
      io.write("\n")
   end
end







local player_turn = 1


local game_over = true

print_board(new_board)

while not game_over do


   
   play_turn(player_turn)




   --returns 1 if player one wins, 2 if player 2, and false if nobody wins
   game_over = check_winner()


end


print_winner(game_over)


