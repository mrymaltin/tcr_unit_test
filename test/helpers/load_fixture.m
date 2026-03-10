function jsonData = load_fixture(filename)
    % Loads a JSON fixture file and parses it into MATLAB structure
    fid = fopen(filename, 'r');
    rawData = fread(fid, inf);
    fclose(fid);
    jsonData = jsondecode(char(rawData'));
end