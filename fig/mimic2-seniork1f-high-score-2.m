data_x = [1 2 3 4 5 6 7 8];
data_y1 = [0.66671 0.64943 0.66489 0.64246 0.65667 0.65667 0.6441 0.63909];
data_y2 = [0.68486 0.68386 0.69014 0.65015 0.68808 0.68808 0.68032 0.64933];

fig = figure; % Create new figure
p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.62 0.70]);
%grid on
%h = hline(0.6545, 'r', 'BL1');
h = hline(0.6545, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'south');
xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'SVM', 'SVM', 'SVM', 'NB', 'NB', 'NB', 'NB', 'NB'};
text(data_x, data_y1, labels1, 'VerticalAlignment','top','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

labels2 = {'NB(R1)', 'NB(R1)', 'NB(R1)', 'NB(R1-2)', 'NB(R1)', 'NB(R1)', 'NB(R1)', 'NB(R2-1)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');
 
title({'Comparison of the high scored models with baseline', 'and w/o rank on MIMIC-II Senior(F) Dataset'}, 'FontSize',12,'FontWeight','bold');
ylabel('Fwa score','FontSize',11,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',11,'FontWeight','bold');

set(fig, 'Units', 'Inches');
pos = get(fig, 'Position');
set(fig, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)]);
print(fig, 'mimic2_seniork1f_high_score', '-dpdf', '-r0');
%print(fig, 'mimic2_seniork1f_high_score', '-dpng');
