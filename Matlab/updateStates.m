function [newStartFlag, newEdgeState, newX, newY, newIdCnt] =  updateStates(oldStartFlag, oldChessState, oldEdgeState, oldX, oldY, oldIdCnt, x, y, type)
    %% Initialization
    newStartFlag = oldStartFlag;
    newEdgeState = oldEdgeState;
    newX = oldX;
    newY = oldY;
    newIdCnt = oldIdCnt;

    %% If it is the first tilt
    if (oldStartFlag == true)
        if (type == '+')
            newEdgeState = [[1, 0, oldIdCnt]; [0, 1, oldIdCnt + 1]; [1, 2, oldIdCnt]; [0, 3, oldIdCnt + 1]];
        elseif (type == '/')
            newEdgeState = [[0, 0, oldIdCnt]; [1, 1, oldIdCnt + 1]; [1, 2, oldIdCnt + 1]; [0, 3, oldIdCnt]];
        end
        newIdCnt = oldIdCnt + 2;
        newStartFlag = false;
        return;
    end
    
    %% Calculate the number of conflicts
    [cNum, cType] = calConflicts(oldChessState, x, y);
    
    %% Whether the tile is the first one of the first row
    if ((y < oldY) || (y ==oldY && x < oldX))
        % Update edge state
        switch cNum
            case 1
                % Create new edgeState
                newEdgeState = zeros(size(oldEdgeState, 1) + 2, size(oldEdgeState , 2));
                % Find conflict point
                [n, nEx] = conflictPoint(oldChessState, oldEdgeState, oldX, oldY, cType);
                if (n == 1)  % tile(Left), tile(Bottom), old(2 : end), tile(Top)
                    % Initialize common rows of new edgeState
                    newEdgeState(3:(end-1), :) = oldEdgeState(2:end,:);
                    switch type
                        case '+'
                            newEdgeState(1,:) = oldEdgeState(1,:);
                            newEdgeState(2,:) = [~oldEdgeState(1,1), 1, oldIdCnt];
                            newEdgeState(end,:) = [~oldEdgeState(1,1), 3, oldIdCnt];
                        case '\'
                            newEdgeState(1,:) = [~oldEdgeState(1,1), 0, oldIdCnt];
                            newEdgeState(2,:) = [~oldEdgeState(1,1), 1, oldIdCnt];
                            newEdgeState(end,:) = [oldEdgeState(1,1), 3, oldEdgeState(1, end)];
                        case '/'
                            newEdgeState(1,:) = [~oldEdgeState(1,1), 0, oldIdCnt];
                            newEdgeState(2,:) = [oldEdgeState(1,1), 1, oldEdgeState(1, end)];
                            newEdgeState(end,:) = [~oldEdgeState(1,1), 3, oldIdCnt];
                        otherwise
                            error('Error in update states.');
                    end
                else % tile(Left), old(n + 1 : end), old(1 : n - 1), tile(Right), tile(Top)
                    % Initialize common rows of new edgeState
                    newEdgeState(2:(end-2),:) = [oldEdgeState((n+1):end, :);
                                                 oldEdgeState(1:(n-1), :)];
                    switch type
                        case '+'
                            newEdgeState(1,:) = [~oldEdgeState(n, 1), 0, oldIdCnt];
                            newEdgeState(end-1,:) = [~oldEdgeState(n, 1), 2, oldIdCnt];
                            newEdgeState(end,:) = [oldEdgeState(n, 1), 3, oldEdgeState(n, end)];
                        case '\'
                            newEdgeState(1,:) = [oldEdgeState(n, 1), 0, oldEdgeState(n, end)];
                            newEdgeState(end-1,:) = [~oldEdgeState(n, 1), 2, oldIdCnt];
                            newEdgeState(end,:) = [~oldEdgeState(n, 1), 3, oldIdCnt];
                        case '/'
                            newEdgeState(1,:) = [~oldEdgeState(n, 1), 0, oldIdCnt];
                            newEdgeState(end-1,:) = [oldEdgeState(n, 1), 2, oldEdgeState(n, end)];
                            newEdgeState(end,:) = [~oldEdgeState(n, 1), 3, oldIdCnt];
                        otherwise
                            error('Error in update states.');
                    end
                end
                % If there is only 1 conflict, must create 1 path, so
                % update ID
                newIdCnt = oldIdCnt + 1;
            case 2 % tile(Top), tile(Left), old(3 : end)
                % Create new edgeState and initialize common rows of new edgeState
                newEdgeState = zeros(size(oldEdgeState));
                newEdgeState(2:(end-1), :) = oldEdgeState(3:end, :);
                switch type
                    case '+'
                        newEdgeState(1) = oldEdgeState(1,:);
                        newEdgeState(end) = oldEdgeState(2,:);
                    case '\'
                        newEdgeState(1) = [oldEdgeState(2,1), 0, oldEdgeState(2,end)];
                        newEdgeState(end) = [oldEdgeState(1,1), 3, oldEdgeState(1,end)];
                    case '/'
                        % Modify the end point should be connected with another ID
                        replaceEnd = find(newEdgeState(:,end),oldEdgeState(1,end),'last');
                        newEdgeState(replaceEnd,end) = oldEdgeState(2,end);
                        
                        newEdgeState(1) = [~oldEdgeState(1,1), 0, oldEdgeState(1,end)]; % Reuse the old ID
                        newEdgeState(end) = [~oldEdgeState(1,1), 3, oldEdgeState(1,end)];
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
    
    %% Other situations
    [n, nEx] = conflictPoint(oldChessState, oldEdgeState, oldX, oldY, cType);
    switch cNum
        case 1
            % Create new edgeState and initialize common rows of new edgeState
            newEdgeState = zeros(size(oldEdgeState, 1) + 2, size(oldEdgeState , 2));
            newEdgeState(1:(n-1), :) = oldEdgeState(1:(n-1), :);
            newEdgeState((n+3):end, :) = oldEdgeState((n+1):end, :);
            % Update the first and the third columns of edgeState
            if (oldEdgeState(n, 2) == 0 || oldEdgeState(n, 2) == 2)
                switch type
                    case '+'
                        newEdgeState(n,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+1,:) = [oldEdgeState(n,1), 0, oldEdgeState(n,3)];
                        newEdgeState(n+2,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                    case '\'
                        newEdgeState(n,:) = [oldEdgeState(n,1), 0, oldEdgeState(n,3)];
                        newEdgeState(n+1,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+2,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                    case '/'
                        newEdgeState(n,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+1,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+2,:) = [oldEdgeState(n,1), 0, oldEdgeState(n,3)];
                    otherwise
                        error('Error in update states.');
                end
            elseif (oldEdgeState(n, 2) == 1 || oldEdgeState(n, 2) == 3)
                switch type
                    case '+'
                        newEdgeState(n,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+1,:) = [oldEdgeState(n,1), 0, oldEdgeState(n,3)];
                        newEdgeState(n+2,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                    case '\'
                        newEdgeState(n,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+1,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+2,:) = [oldEdgeState(n,1), 0, oldEdgeState(n,3)];
                    case '/'
                        newEdgeState(n,:) = [oldEdgeState(n,1), 0, oldEdgeState(n,3)];
                        newEdgeState(n+1,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                        newEdgeState(n+2,:) = [~oldEdgeState(n,1), 0, oldIdCnt];
                    otherwise
                        error('Error in update states.');
                end
            else
                error('Error in update states.');
            end
            % Update the second columns
            newEdgeState(n,2) = mod(oldEdgeState(n,2)+1, 4);
            newEdgeState(n+1,2) = mod(oldEdgeState(n,2)+2, 4);
            newEdgeState(n+2,2) = mod(oldEdgeState(n,2)+3, 4);
            % If there is only 1 conflict, must create 1 path, so update ID
            newIdCnt = oldIdCnt + 1;
        case 2
            switch cType
                case 1 % For 90 degree
                    % Create new edgeState and initialize common rows of new edgeState
                    newEdgeState = zeros(size(oldEdgeState));
                    newEdgeState(1:(n-1), :) = oldEdgeState(1:(n-1), :);
                    newEdgeState((n+2):end, :) = oldEdgeState((n+2):end, :);
                    switch type
                        case '+'
                            newEdgeState(n,:) = oldEdgeState(n+1,1);
                            newEdgeState(n+1,:) = oldEdgeState(n,1);
                        case '\'
                            if (oldEdgeState(n, 2) == 0 || oldEdgeState(n, 2) == 2)
                                newEdgeState(n,:) = [oldEdgeState(n,1), oldEdgeState(n+1,2), oldEdgeState(n,3)];
                                newEdgeState(n+1,:) = [oldEdgeState(n+1,1), oldEdgeState(n,2), oldEdgeState(n+1,3)];
                            elseif (oldEdgeState(n, 2) == 1 || oldEdgeState(n, 2) == 3)
                                % Modify the end point should be connected with another ID (reuse the ID of point n - find n replace by n+1)
                                replaceEnd = find(newEdgeState(:,end),newEdgeState(n,end),'first');
                                newEdgeState(replaceEnd,end) = oldEdgeState(n+1,end);
                                % Update edge state
                                newEdgeState(n,:) = [~oldEdgeState(n,1), oldEdgeState(n+1,2), oldIdCnt];
                                newEdgeState(n+1,:) = [~oldEdgeState(n,1), oldEdgeState(n,2), oldIdCnt];
                                % Update ID
                                newIdCnt = oldIdCnt + 1;
                            else
                                error('Error in update states.');
                            end
                        case '/'
                            if (oldEdgeState(n, 2) == 1 || oldEdgeState(n, 2) == 3)
                                newEdgeState(n,:) = [oldEdgeState(n,1), oldEdgeState(n+1,2), oldEdgeState(n,3)];
                                newEdgeState(n+1,:) = [oldEdgeState(n+1,1), oldEdgeState(n,2), oldEdgeState(n+1,3)];
                            elseif (oldEdgeState(n, 2) == 2 || oldEdgeState(n, 2) == 4)
                                % Modify the end point should be connected with another ID (reuse the ID of point n - find n replace by n+1)
                                replaceEnd = find(newEdgeState(:,end),newEdgeState(n,end),'first');
                                newEdgeState(replaceEnd,end) = oldEdgeState(n+1,end);
                                % Update edge state
                                newEdgeState(n,:) = [~oldEdgeState(n,1), oldEdgeState(n+1,2), oldIdCnt];
                                newEdgeState(n+1,:) = [~oldEdgeState(n,1), oldEdgeState(n,2), oldIdCnt];
                                % Update ID
                                newIdCnt = oldIdCnt + 1;
                            else
                                error('Error in update states.');
                            end
                        otherwise
                            error('Error in update states.');
                    end
                case -1 % For 180 degree
                    % How to deal with the inner cycle?
                otherwise
                    error('Error in update states.');
            end
        case 3
        otherwise
            error('Error in update states.');
    end
end