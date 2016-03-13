classdef FPGA
    properties
        % MATLAB used only
        startFlag = true;
        maxSpace;
        % Storage
        searchPtrX = 0;
        searchPtrY = 0;
        chessState;
        edgeState = []; % 1 for Left, 2 for Bottom, 3 for Right, 4 for Top
        idCnt = 0;
    end
    methods
        function obj = FPGA(maxSpace)
            obj.maxSpace = maxSpace;
            obj.chessState = zeros(maxSpace);
        end
        % Function signatures
    end
end