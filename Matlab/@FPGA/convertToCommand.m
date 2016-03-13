function cmd = convertToCommand(obj, x, y, type)
    cmd = [];
    
    % Convert from MATLAB format
    x = x - 1;
    y = y - 1;

    if (x == 0)
        cmd = '@';
    else
        cmd = mod(x - 1, 26) + 'A';
        while (x > 26)
            x = x - 26;
            cmd = [mod(x - 1, 26) + 'A', cmd];
        end
    end
    
    cmd = [cmd, num2str(y)];
    
    if ((type == '+') || (type == '/') || (type == '\'))
    	cmd = [cmd, type];
    else
    	error(['Invalid type ', type, ' when convert to command.']);
    end
end