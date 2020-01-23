 data = [0.80786 0.80414 0.81723;
    0.80786 0.80294 0.82088;
    0.80786 0.80152 0.81305;
    0.80786 0.80673 0.80965;
    0.80786 0.80786 0.81419;
    0.80786 0.80786 0.81419;
    0.80786 0.79618 0.81625;
    0.80786 0.81563 0.81228;
    0.80786 0 0.81479;
    0.80786 0 0.81479];
 
 figure; % Create new figure
 hbar = bar(data);    % Create bar plot
 ylim([0.78 0.83]);
 colormap('default');
 grid on
 l = cell(1,3);
 l{1}='BL1'; l{2}='No Rank'; l{3}='Rank'; 
 legend(hbar, l, 'Location', 'north', 'Orientation','Horizontal');
 xticklabel_rotate([1 2 3 4 5 6 7 8 9 10], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC', 'NO GRP-VC', 'No Grp-CFC'}, 'Fontsize',8);

 % Get the data for all the bars that were plotted
 x = get(hbar,'XData');
 y = get(hbar,'YData');
 
 ygap = 0.001;
 labels = {'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM'};
 xPos = x{1, :} - 0.15;
 yPos = y{1, :} + ygap; 
 hText = text(xPos, yPos, labels);
 set(hText, 'Rotation', 90, 'VerticalAlignment', 'bottom', 'FontSize', 8, 'Color', 'b');

 labels2 = {'SVM', 'RF', 'RF', 'RF', 'SVM', 'SVM', 'SVM', 'SVM', '', ''};
 xPos2 = x{2, :} + 0.08;
 yPos2 = y{2, :} + ygap; 
 hText2 = text(xPos2, yPos2, labels2);
 set(hText2, 'Rotation', 90, 'VerticalAlignment', 'bottom', 'FontSize', 8, 'Color', 'b');

 labels3 = {'SVM(R4-2)', 'SVM(R4-2)', 'SVM(R1-2)', 'RF(R1-3)', 'RF(R3-3)', 'RF(R3-3)', 'SVM(R4-2)', 'SVM(R4-2)', 'SVM(R3-2)', 'SVM(R3-2)'};
 xPos3 = x{3, :} + 0.3;
 yPos3 = y{3, :} + ygap;
 hText3 = text(xPos3, yPos3, labels3);
 set(hText3, 'Rotation', 90, 'VerticalAlignment','bottom', 'FontSize', 8, 'Color', 'b');
 
 