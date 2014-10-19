function homework2()
	files = getSampleFiles();
	for i=1:length(files)
		fileHistogram(files{i});
	end
end

