classdef FPGA
    properties
        % MATLAB used only
        startFlag = true;
        maxSpace;
        % Storage
        searchPtrX = 0;
        searchPtrY = 0;
        chessState;
        edgeState = []; % 0 for Left, 1 for Bottom, 2 for Right, 3 for Top
        idCnt = 1; % MUST start from 1 in case when search the two ends of a connection will fail
    end
    methods
        function obj = FPGA(maxSpace)
            obj.maxSpace = maxSpace;
            obj.chessState = zeros(maxSpace);
        end
        % Function signatures
    end
end