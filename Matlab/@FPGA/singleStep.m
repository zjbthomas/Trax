function singleStep(obj, cmd)
    %% Backup chessState
    backupStartFlag = obj.startFlag;
    backupChessState = obj.chessState;
    backupEdgeState = obj.edgeState;
    backupX = obj.searchStrX;
    backupY = obj.searchStrY;
    backupId = obj.idCnt;

    %% Convert from command
    [x, y, type] = convertFromCommand(cmd);
    
    %% Place the tile
    backupChessState(x, y) = 1;
    
    %% Shift if needed
    [backupChessState, backupX, backupY] = shiftBoard(backupChessState, backupX, backupY, x, y);
    
    %% Update states
    
    %% Force tiles
end