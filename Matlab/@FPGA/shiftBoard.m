function [newBoard, newX, newY] = shiftBoard(oldBoard, oldX, oldY, x, y)
    newBoard = oldBoard;
    newX = oldX;
    newY = oldY;

    if (x == 1)
        % Add a blank column to the left
        newBoard = [zeros(size(oldBoard, 1), 1), oldBoard(:, 2:end)];
        % Move search pointer
        newX = oldX + 1;
    elseif (y == 1)
        % Add a blank row to the top
        newBoard = [zeros(1, size(oldBoard, 2)); oldBoard(2:end, :)];
        % Move search pointer
        newY = oldY + 1;
    end
end