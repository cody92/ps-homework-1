function [entropy, redundancy] = fileEntropy(fileName, mode)
	fileSize = getFileByteNumber(fileName, mode);

	if(strcmp(mode,'uint8'))
		simbolsLength = 0:255;
		numberOfBits = 8;
	elseif (strcmp(mode,'uint16'))
		simbolsLength = 0:65535;
		numberOfBits = 16;
	end
			
	fileContent = readFile(fileName, mode);
	numberOfAppearances = hist(fileContent, simbolsLength);
	max(numberOfAppearances)
	probability = numberOfAppearances/fileSize;
	for i=1:length(probability)
		if probability(i) == 0 
			entropy(i) = 0;
		else
			entropy(i) = - log2(probability(i));
		end
	end
	redundancy = sum(numberOfBits - entropy);
end

