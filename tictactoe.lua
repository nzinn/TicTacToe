
local new_board = {{" ", "o", "x"}, {"x", "o", " "}, {"x", "o", " "}}







function put_x(board, row, col)
   board[row][col] = "x"
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
shfsdkjdlkdjsfld = false
if shfsdkjdlkdjsfld== true then
  print("weee")
  elseif print("reeeech") then

end


















