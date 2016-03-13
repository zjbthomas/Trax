function [n] = conflictPoint(chessState, edgeState, searchPtrX, searchPtrY)
    nowX = searchPtrX;
    nowY = searchPtrY;
    
    for n = 1 : size(edgeState, 1)
        switch edgeState(n, 2)
            case 0
                % Check if conflict
                if (chessState(nowX - 1, nowY) == 1)
                    return;
                % Move the pointer  
                elseif (edgeState(n + 1, 2) ~= 1)
                    nowY = nowY + 1;
                    if (edgeState(n + 1, 2) == 3)
                        nowX = nowX - 1;
                    end
                end
            case 1
                % Check if conflict
                if (chessState(nowX, nowY + 1) == 1)
                    return;
                % Move the pointer  
                elseif (edgeState(n + 1, 2) ~= 2)
                    nowX = nowX + 1;
                    if (edgeState(n + 1, 2) == 0)
                        nowY = nowY + 1;
                    end
                end
            case 2
                % Check if conflict
                if (chessState(nowX + 1, nowY) == 1)
                    return;
                % Move the pointer  
                elseif (edgeState(n + 1, 2) ~= 3)
                    nowY = nowY - 1;
                    if (edgeState(n + 1, 2) == 1)
                        nowX = nowX + 1;
                    end
                end
            case 3
                % Check if conflict
                if (chessState(nowX, nowY - 1) == 1)
                    return;
                % Move the pointer  
                elseif (edgeState(n + 1, 2) ~= 0)
                    nowX = nowX - 1;
                    if (edgeState(n + 1, 2) == 2)                                              )
                        nowY = nowY - 1;
                    end
                end
            otherwise
                errer('Undefined notation for directions.');
        end
    end
end