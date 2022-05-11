local board = {{"o", "o", "x"}, {"x", "o", " "}, {"o", "x", " "}}









if board[1][1] == "o" and board[1][2] == "o" and board [1][3] == "o"   then
   print("Row 1 has been won by o")
else
   print("nobody has won row one")
end



if board[1][1] == "o" and board[2][1] == "o" and board[3][1] == "o" then
   print("o has won column 1")
end



