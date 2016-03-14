function [num, type] = calConflicts(chessState, x, y)
    %% Initialization
    num = 0;
    type = 0; % Only have +1(for situation of 90 degree) or -1(for situation of 180 degree) when num = 2
    %% Calculation
    num = chessState(x + 1, y) + chessState(x - 1, y) + chessState(x, y + 1) + chessState(x, y - 1);
    if (num == 2)
        if (chessState(x + 1, y) == chessState(x - 1, y)) % Judge whether is 180 degree by only one constrant
            type = -1;
        else
            type = 1;
        end
    end
end