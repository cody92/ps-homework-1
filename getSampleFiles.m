function [sample_files] = getSampleFiles()

	DATA_FOLDER = 'data';

	strArray = java_array('java.lang.String', 12);
	list_folders = dir(DATA_FOLDER);
	folders_number = length(list_folders);
	sample_files_number = 1;
	fileSep = filesep;
	for i=3:folders_number
		childFiles = dir(strcat(DATA_FOLDER,fileSep,list_folders(i).name));
		
		for j=3:length(childFiles)
			strArray(sample_files_number) = java.lang.String(strcat(DATA_FOLDER,fileSep,list_folders(i).name,fileSep,childFiles(j).name));
			sample_files_number = sample_files_number + 1;
		end
	end
	sample_files = cell(strArray);
end

