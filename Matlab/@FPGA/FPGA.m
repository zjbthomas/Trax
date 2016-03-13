classdef FPGA
    properties
        % MATLAB used only
        startFlag = true;
        maxSpace;
        % Storage
        searchPtrX = 0;
        searchPtrY = 0;
        chessState;
        edgeState = [];
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