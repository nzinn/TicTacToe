
local new_board = {{"x", "x", "x"}, {" ", "o", " "}, {"x", "o", " "}}

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


function play_turn(board, is_x_turn)
   print("player " .. player_turn .. ", it's you're turn!")

   print("input row! (1 2 3)")
   local row = io.read()
   
   print("input column! (1 2 3)")
   local column = io.read()

   if is_x_turn then
      put_x(board, row, column)
   else
      put_o(board, row, column)
   end   
end



--sees if a winner has won tic tac toe
function check_winner(board)

   --check the rows for a winner
   for row = 1, 3 do
      
      winner = true
      
      for col  = 2, 3 do
	 if board[row][col - 1] ~= board[row][col] then
	    winner = false
	 end
      end

      if winner and board[row][1] ~= " " then
	 --return winning character
	 return board[row][1]
      end
   end


   --check the columns for a winner
   for col = 1, 3 do
      
      winner = true

      for row = 2, 3 do
	 if board[row - 1][col] ~= board[row][col] then
	    winner = false
	 end
      end

      if winner and board [1][col] ~= " " then
	 return board[1][col]
      end
   end

   --check diagonals

   if board[1][1] == board[2][2] == board[3][3] and board[1][1] ~= " " then
      return board[1][1]
   end

   if board[1][3] == board[2][2] == board [3][1] and board[1][3] ~= " " then
      return board[1][3]
   end

   --return false if there are no winners
   return false

   
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







local is_xplayer_turn = true


local game_over = true

print_board(new_board)

print(check_winner(new_board))
--[[
while not game_over do


   
   play_turn(new_board, is_xplayer_turn)

   is_xplayer_turn = not is_xplayer_turn
   


   --returns "x" if player one wins, "o" if player 2, and false if nobody wins
   game_over = check_winner()


end


print_winner(game_over)

print("goodbye!")

--]]


