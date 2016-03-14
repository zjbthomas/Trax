function [n, nEx] = conflictPoint(chessState, edgeState, searchPtrX, searchPtrY, cType)
    %% Initialization of output
    n = 0;
    nEx = 0; % nEx has value only when cType = -1
    
    %% Initialization of search pointer
    nowX = searchPtrX;
    nowY = searchPtrY;
    
    %% Searching
    for i = 1 : size(edgeState, 1)
        switch edgeState(i, 2)
            case 0
                % Check if conflict
                if (chessState(nowX - 1, nowY) == 1)
                    if (n == 0)
                        n = i;
                        if (cType ~= -1)
                            return;
                        end
                    else
                        nEx = i;
                        return;
                    end
                % Move the pointer  
                elseif (edgeState(i + 1, 2) ~= 1)
                    nowY = nowY + 1;
                    if (edgeState(i + 1, 2) == 3)
                        nowX = nowX - 1;
                    end
                end
            case 1
                % Check if conflict
                if (chessState(nowX, nowY + 1) == 1)
                    if (n == 0)
                        n = i;
                        if (cType ~= -1)
                            return;
                        end
                    else
                        nEx = i;
                        return;
                    end
                % Move the pointer  
                elseif (edgeState(i + 1, 2) ~= 2)
                    nowX = nowX + 1;
                    if (edgeState(i + 1, 2) == 0)
                        nowY = nowY + 1;
                    end
                end
            case 2
                % Check if conflict
                if (chessState(nowX + 1, nowY) == 1)
                    if (n == 0)
                        n = i;
                        if (cType ~= -1)
                            return;
                        end
                    else
                        nEx = i;
                        return;
                    end
                % Move the pointer  
                elseif (edgeState(i + 1, 2) ~= 3)
                    nowY = nowY - 1;
                    if (edgeState(i + 1, 2) == 1)
                        nowX = nowX + 1;
                    end
                end
            case 3
                % Check if conflict
                if (chessState(nowX, nowY - 1) == 1)
                    if (n == 0)
                        n = i;
                        if (cType ~= -1)
                            return;
                        end
                    else
                        nEx = i;
                        return;
                    end
                % Move the pointer  
                elseif (edgeState(i + 1, 2) ~= 0)
                    nowX = nowX - 1;
                    if (edgeState(i + 1, 2) == 2)                                              )
                        nowY = nowY - 1;
                    end
                end
            otherwise
                errer('Undefined notation for directions.');
        end
    end
end