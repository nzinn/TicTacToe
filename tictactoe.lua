game_over = false
--local new_board = {{"x", "x", "x"}, {" ", "o", " "}, {"x", "o", " "}}

function print_instructions()
  print("this is tic tac toe you can either be x or o,\n if you get three x's or o's in a row you win")
  
  end
  
function put_x(board, row, col)
   if board[row][col] == " " then
      board[row][col] = "x"
      return true else
      return false
   end
end

function put_o(board, row, col)
  if board[row][col] == " " then
     board[row][col] = "o"
     return true
  else
     return false
  end
 end



function play_turn(board, is_x_turn)


   print_board(board)

   local player
   
   if is_x_turn then
      player = "x"
   else
      player = "o"
   end
   
   
   print("player " .. player  .. ", it's you're turn!")

   print("input row! (1, 2, or 3)")
   local row = io.read("*n")


   print_board(board)

   print("player " .. player  .. ", it's you're turn!")
   
   print("input column! (1, 2, or 3)")
   local column = io.read("*n")

if row == 12 and column == 34 then
  return cheater
end


   if is_x_turn then
     
      --keep trying until they give a valid play
      if not put_x(board, row, column) then
	 print("Space is not empty, please try again!")
	 play_turn(board, is_x_turn)
 end
 else
      if not put_o(board, row, column) then
	 print("Space is not empty, please try again!")
	 play_turn(board, is_x_turn)
      end
   end   
end




--sees if a winner has won tic tac toe
function check_winner(board)

   --check the rows for a winner
   for row = 1, 3 do
      
      winner = true
      
      for col = 2, 3 do
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
  
  if player == "x"  then
    print("x won please stand on the podium")
  elseif player == "o" then
    print("o won please stand on the podium")
  end
end




function print_board(board)

   --print column numbers
   io.write("  ")

   for col =1, 3 do
      io.write(col .. " ")
   end

   print()

   
   
   for row  = 1, 3 do

      --print row numbers
      io.write(row .. " ")
      
      for col = 1, 3 do
	 io.write(board[row][col])
	 if col ~= 3 then
	    io.write("|")
	 end
      end

      io.write("\n")
      
      if row ~= 3 then
	 io.write("  -----")
      end
      
      io.write("\n")
   end
end







local is_xplayer_turn = true




--initialize board
local board = {{" ", " ", " "}, {" ", " ", " "}, {" ", " ", " "}}


--clear the screen
print("\027[H\027[2J")

while not game_over do

   local cheater = play_turn(board, is_xplayer_turn)
   
   if cheater == "cheater" then
     if is_xplayer_turn then
       game_over = "x"
      break
    else
      game_over = "o"
      break
    end
  end
  

   play_turn(board, is_xplayer_turn)

   --switch turns
   is_xplayer_turn = not is_xplayer_turn
   


   --returns "x" if player one wins, "o" if player 2, and false if nobody wins
   game_over = check_winner(board)

end

print("\027[H\027[2J")

print_board(board)

print_winner(game_over)

print("goodbye!")




