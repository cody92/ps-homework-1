function [entropy, redundancy] = fileEntropy(fileName, mode)
	fileSize = getFileByteNumber(fileName);

	if(strcmp(mode,'uint8'))
		simbolsLength = 0:255;
		numberOfBits = 8;
	elseif (strcmp(mode,'uint16'))
		simbolsLength = 0:65535;
		numberOfBits = 16;
	end
			
	fileContent8 = readFile(fileName, mode);
	numberOfAppearances = hist(fileContent8, simbolsLength);
	probability = numberOfAppearances/fileSize;
	entropy = -log2(probability);
	entropy(entropy == -inf) = 0;
	redundancy = sum(numberOfBits - entropy);
end

