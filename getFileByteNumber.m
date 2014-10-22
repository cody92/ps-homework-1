function [size] = getFileByteNumber(fileName, mode)

	fileID = fopen(fileName);
	[file, size] = fread(fileID, inf, mode);
	fclose(fileID);
end

