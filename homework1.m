function homework1()
	files = getSampleFiles();
	for i=1:length(files)
		[bytes bits] = getFileByteNumber(files{i});
		disp(sprintf('Fisierul: %s are un numar de %d bytes si un numar de %d biti. Raportul bits/bytes este %1.f\n', files{i},bytes,bits,bits/bytes));
	end
end

