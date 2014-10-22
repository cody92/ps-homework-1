function homework1()
	files = getSampleFiles();
	for i=1:length(files)
		[bytes] = getFileByteNumber(files{i},'uint8');
		[bits] = getFileByteNumber(files{i},'bit1');
		disp(sprintf('Fisierul: %s are un numar de %d bytes si un numar de %d biti. Raportul bits/bytes este %1.f\n', files{i},bytes,bits,bits/bytes));
	end
end

