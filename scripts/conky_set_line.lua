-- conky-position.lua

-- Function to read position from a file
function read_position_from_file(file_path)
    local file = io.open(file_path, "r")
    if not file then
        return "10,40"  -- Default position if file is not found
    end
    local position = file:read("*a")
    file:close()
    return position:match("%d+,%d+") or "10,40"
end

-- Function to return position for the image
function conky_set_line()
    local home_dir = os.getenv("HOME")
    local position_file = home_dir .. "/conky-yasno/tmp/vars/line_position"
    local result = read_position_from_file(position_file)

    local final = "${image ~/conky-yasno/tmp/line.png -p " .. result .. " -s 620x25}"

    -- local log_file_path = home_dir .. "/conky-yasno/tmp/logs/lua.log"
    -- local log_file = io.open(log_file_path, "a")
    -- log_file:write('\n');
    -- log_file:write(final);
    -- log_file:close();
    return final;
end
