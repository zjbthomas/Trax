function [newStartFlag, newEdgeState, newX, newY, newIdCnt] =  updateStates(oldStartFlag, oldChessState, oldEdgeState, oldX, oldY, oldIdCnt, x, y, type)
    newStartFlag = oldStartFlag;
    newEdgeState = oldEdgeState;
    newX = oldX;
    newY = oldY;
    newIdCnt = oldIdCnt;

    % If it is the first tilt
    if (oldStartFlag == true)
        if (type == '+')
            newEdgeState = [[1, 1, oldIdCnt]; [0, 2, oldIdCnt + 1]; [1, 3, oldIdCnt]; [0, 4 oldIdCnt + 1]];
        elseif (type == '/')
            newEdgeState = [[0, 1, oldIdCnt]; [1, 2, oldIdCnt + 1]; [1, 3, oldIdCnt + 1]; [0, 4, oldIdCnt]];
        end
        newIdCnt = oldIdCnt + 2;
        newStartFlag = false;
        return;
    end
    
    % Calculate the number of conflicts
    conflicts = calConflicts(oldChessState, x, y);
    
    % Whether the tile is the first one of the first row
    if ((y < oldY) || (y ==oldY && x < oldX))
        % Update edge state
        switch conflicts
            case 1
                
            case 2
                switch type
                    case '+'
                        newEdgeState = [oldEdgeState(1,:);oldEdgeState(3:end, :);oldEdgeState(2,:)];
                    case '\'
                        newEdgeState = [oldEdgeState(2,:);oldEdgeState(3:end, :);oldEdgeState(1,:)];
                    case '/'
                        % Modify the end point should be connected with
                        % another ID
                        replaceEnd = find(oldEdgeState(:,end),oldEdgeState(1,end),'last');
                        oldEdgeState(replaceEnd,end) = oldEdgeState(2,end);
                        
                        newEdgeState = [[~oldEdgeState(1,1),oldEdgeState(1,2:end)];oldEdgeState(3:end, :);[~oldEdgeState(1,1),oldEdgeState(2,2:(end-1)),oldEdgeState(1,end)]];
                    otherwise
                        error('Error in update states.');
                end
            otherwise
                error('Error in update states.');
        end
        % Update pointer
        newX = x;
        newY = y;
    end
end