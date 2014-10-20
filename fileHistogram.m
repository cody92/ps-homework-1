function fileHistogram(fileName)

disp(sprintf('Histogramele pentru fisierul: %s',fileName));

figure('Name', horzcat('Histograme ale a fisierului ', fileName));
fileContent8 = readFile(fileName,'uint8');
subplot(2,1,1);
hist(fileContent8,0:255);

subplot(2,1,2);
fileContent16 = readFile(fileName,'uint16');
hist(fileContent16,0:65535);

end

