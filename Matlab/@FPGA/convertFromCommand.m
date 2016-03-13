function [x, y, type] = convertFromCommand(obj, cmd)
    x = 0;
    y = 0;
    
    % Deal with the first character
    if (cmd(1) == '@')
        x = 0;
    else
        x = cmd(1) - 'A' + 1;
    end
    
    for i = 2 : length(cmd)
        if ((cmd(i) >= 'A') && (cmd(i) <= 'Z'))
            x = 26 * x + cmd(i) - 'A' + 1;
        elseif ((cmd(i) >= '0') && (cmd(i) <= '9'))
            y = 10 * y + cmd(i) - '0';
        elseif ((cmd(i) == '+') || (cmd(i) == '/') || (cmd(i) == '\'))
            type = cmd(i);
        else
            error(['Invalid convertion from command: ', cmd, ' at position ', i, ' and character ', cmd(i), '.']);
        end
    end
    
    % Convert to compatible MATLAB
    x = x + 1;
    y = y + 1;
end