function homework3()
files = getSampleFiles();
	for i=1:length(files)
		[entropy8 redundancy8(i)] = fileEntropy(files{i}, 'uint8');
		[entropy16 redundancy16(i)] = fileEntropy(files{i}, 'uint16');
	end
	redundancy8
end

