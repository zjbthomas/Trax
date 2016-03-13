function [num] = calConflicts(chessState, x, y)
    num = 0;
    num = chessState(x + 1, y) + chessState(x - 1, y) + chessState(x, y + 1) + chessState(x, y - 1);
end