 data = [0.78177 0.783 0.78901;
    0.78177 0.78469 0.79518;
    0.78177 0.78955 0.79454;
    0.78177 0.78722 0.79555;
    0.78177 0.78821 0.7973;
    0.78177 0.78821 0.7973;
    0.78177 0.78619 0.78989;
    0.78177 0.7879 0.79975;
    0.78177 0 0.79444;
    0.78177 0 0.79444];
 
 fig = figure; % Create new figure
 hbar = bar(data);    % Create bar plot
 ylim([0.78 0.805]);
 colormap('default');
 grid on
 l = cell(1,3);
 l{1}='BL1'; l{2}='No Rank'; l{3}='Rank'; 
 %legend(hbar, l, 'Location', 'north', 'Orientation','Horizontal');
 legend(hbar, l, 'Location', 'east');
 xticklabel_rotate([1 2 3 4 5 6 7 8 9 10], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC', 'NO GRP-VC', 'No GRP-CFC'}, 'Fontsize',8);

 % Get the data for all the bars that were plotted
 x = get(hbar,'XData');
 y = get(hbar,'YData');
 
 ygap = 0.001;
 labels = {'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM', 'SVM'};
 xPos = x{1, :} - 0.15;
 yPos = y{1, :} + ygap; 
 hText = text(xPos, yPos, labels);
 set(hText, 'Rotation', 90, 'VerticalAlignment', 'bottom', 'FontSize', 8);

 labels2 = {'SVM', 'SVM', 'RF', 'SVM', 'RF', 'RF', 'SVM', 'SVM', '', ''};
 xPos2 = x{2, :} + 0.08;
 yPos2 = y{2, :} + ygap; 
 hText2 = text(xPos2, yPos2, labels2);
 set(hText2, 'Rotation', 90, 'VerticalAlignment', 'bottom', 'FontSize', 8);

 labels3 = {'RF(R3-3)', 'SVM(R1)', 'SVM(R4-2)', 'SVM(R4-2)', 'RF(R2-1)', 'RF(R2-1)', 'SVM(R4-1)', 'SVM(R4-3)', 'RF(R2-2)', 'RF(R2-2)'};
 xPos3 = x{3, :} + 0.3;
 yPos3 = y{3, :} + ygap;
 hText3 = text(xPos3, yPos3, labels3);
 set(hText3, 'Rotation', 90, 'VerticalAlignment','bottom', 'FontSize', 8);
 
 title('Comparison of the high scored models with baseline and w/o rank on MIMIC-III Adult Dataset', 'FontSize',14,'FontWeight','bold');
 ylabel('Fwa score','FontSize',12,'FontWeight','bold');
 xlabel('Ensemble Models','FontSize',12,'FontWeight','bold');

 set(fig, 'Units', 'Inches');
 pos = get(fig, 'Position');
 set(fig, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)]);
 print(fig, 'mimic3_adult24hrs_high_score', '-dpdf', '-r0');
 %print(fig, 'mimic3_adult24hrs_high_score', '-dpng');
