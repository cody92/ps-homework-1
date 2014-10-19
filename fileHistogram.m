function fileHistogram(fileName)

disp(sprintf('Histogramele pentru fisierul: %s',fileName));

figure('Name', horzcat('Histograma simboluri 8 biti a fisierului ', fileName));
fileContent8 = readFile(fileName,'uint8');
hist(fileContent8,0:255);

figure('Name', horzcat('Histograma simboluri 16 biti a fisierului ', fileName));
fileContent16 = readFile(fileName,'uint16');
hist(fileContent16,0:65535);

end

