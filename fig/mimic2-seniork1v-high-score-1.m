 data = [0.66083 0.65692 0.67806;
    0.66083 0.66543 0.67948;
    0.66083 0.65435 0.66159;
    0.66083 0.64871 0.65749;
    0.66083 0.65038 0.6533;
    0.66083 0.65038 0.65334;
    0.66083 0.65239 0.68215;
    0.66083 0.64548 0.65022;
    0.66083 0 0.66291;
    0.66083 0 0.66291];
 
 fig = figure; % Create new figure
 hbar = bar(data);    % Create bar plot
 ylim([0.64 0.70]);
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
 labels = {'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB'};
 xPos = x{1, :} - 0.15;
 yPos = y{1, :} + ygap; 
 hText = text(xPos, yPos, labels);
 set(hText, 'Rotation', 90, 'VerticalAlignment', 'bottom', 'FontSize', 8);

 labels2 = {'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', '', ''};
 xPos2 = x{2, :} + 0.08;
 yPos2 = y{2, :} + ygap; 
 hText2 = text(xPos2, yPos2, labels2);
 set(hText2, 'Rotation', 90, 'VerticalAlignment', 'bottom', 'FontSize', 8);

 labels3 = {'NB(R2-1)', 'NB(R4-3)', 'NB(R1-3)', 'NB(R2-3)', 'NB(R3-3)', 'NB(R3-3)', 'SVM(R2)', 'NB(R2)', 'NB(R1-2)', 'NB(R1-2)'};
 xPos3 = x{3, :} + 0.3;
 yPos3 = y{3, :} + ygap;
 hText3 = text(xPos3, yPos3, labels3);
 set(hText3, 'Rotation', 90, 'VerticalAlignment','bottom', 'FontSize', 8);
 
 title('Comparison of the high scored models with baseline and w/o rank on MIMIC-II Senior(V) Dataset', 'FontSize',14,'FontWeight','bold');
 ylabel('Fwa score','FontSize',12,'FontWeight','bold');
 xlabel('Ensemble Models','FontSize',12,'FontWeight','bold');

 set(fig, 'Units', 'Inches');
 pos = get(fig, 'Position');
 set(fig, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)]);
 print(fig, 'mimic2_seniork1v_high_score', '-dpdf', '-r0');
 %print(fig, 'mimic2_seniork1v_high_score', '-dpng');
