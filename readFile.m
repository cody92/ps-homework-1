function [ file ] = readFile(fileName, mode)
	fileID = fopen(fileName);
	file = fread(fileID, inf, mode);
	fclose(fileID);
end

