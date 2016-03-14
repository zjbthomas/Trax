function obj = singleStep(obj, cmd)
    %% Backup chessState
    backupStartFlag = obj.startFlag;
    backupChessState = obj.chessState;
    backupEdgeState = obj.edgeState;
    backupX = obj.searchPtrX;
    backupY = obj.searchPtrY;
    backupId = obj.idCnt;

    %% Convert from command
    [x, y, type] = convertFromCommand(cmd);
    
    %% Place the tile
    backupChessState(x, y) = 1;
    
    %% Shift if needed
    [backupChessState, backupX, backupY] = shiftBoard(backupChessState, backupX, backupY, x, y);
    
    %% Update states
    [backupStartFlag, backupEdgeState, backupX, backupY, backupId] =  updateStates(backupStartFlag, backupChessState, backupEdgeState, backupX, backupY, backupId, x, y, type);
    
    %% Force tiles
    
    %% If it is a valid move, update the information of class FPGA
    obj.startFlag = backupStartFlag;
    obj.chessState = backupChessState;
    obj.edgeState = backupEdgeState;
    obj.searchPtrX = backupX;
    obj.searchPtrY = backupY;
    obj.idCnt = backupId;
end