function homework3()
files = getSampleFiles();
	for i=1:length(files)
		figure(i);
		[entropy8 redundancy8] = fileEntropy(files{i}, 'uint8');
		[entropy16 redundancy16] = fileEntropy(files{i}, 'uint16');
		subplot(2,1,1)
		plot(entropy8);
		title(sprintf('Redundanta: %s', redundancy8));
		subplot(2,1,2)
		plot(entropy16)
		title(sprintf('Redundanta: %s', redundancy16));
	end
end

