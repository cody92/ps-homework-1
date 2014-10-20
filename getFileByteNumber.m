function [byteNumber bitNumber] = getFileByteNumber(fileName)


	fileID = fopen(fileName);

	fileInfo = dir(fileName);
	byteNumber = fileInfo.bytes;

	[file bitNumber] = fread(fileID,inf,'bit1');
	fclose(fileID);
end

