data_x = [1 2 3 4 5 6 7 8];
data_y1 = [0.80414 0.80294 0.80152 0.80673 0.80786 0.80786 0.79618 0.81563];
data_y2 = [0.81723 0.82088 0.81305 0.80965 0.81419 0.81419 0.81625 0.81228];

fig = figure; % Create new figure
p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.78 0.83]);
%grid on
%h = hline(0.80786, 'r', 'BL1');
h = hline(0.80786, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'south');
xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'SVM', 'RF', 'RF', 'RF', 'SVM', 'SVM', 'SVM', 'SVM'};
text(data_x, data_y1, labels1, 'VerticalAlignment','top','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

labels2 = {'SVM(R4-2)', 'SVM(R4-2)', 'SVM(R1-2)', 'RF(R1-3)', 'RF(R3-3)', 'RF(R3-3)', 'SVM(R4-2)', 'SVM(R4-2)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

title({'Comparison of the high scored models with baseline', 'and w/o rank on MIMIC-II Adult(F) Dataset'}, 'FontSize',12,'FontWeight','bold');
ylabel('Fwa score','FontSize',11,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',11,'FontWeight','bold');

set(fig, 'Units', 'Inches');
pos = get(fig, 'Position');
set(fig, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)]);
print(fig, 'mimic2_adultk1f_high_score', '-dpdf', '-r0');
%print(fig, 'mimic2_adultk1f_high_score', '-dpng');
