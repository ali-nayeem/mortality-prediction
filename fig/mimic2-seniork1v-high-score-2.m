data_x = [1 2 3 4 5 6 7 8];
data_y1 = [0.65692 0.66543 0.65435 0.64871 0.65038 0.65038 0.65239 0.64548];
data_y2 = [0.67806 0.67948 0.66159 0.65749 0.6533 0.65334 0.68215 0.65022];

fig = figure; % Create new figure
p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.64 0.70]);
%grid on
%h = hline(0.66083, 'r', 'BL1');
h = hline(0.66083, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'north');
xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB'};
text(data_x, data_y1, labels1, 'VerticalAlignment','top','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

labels2 = {'NB(R2-1)', 'NB(R4-3)', 'NB(R1-3)', 'NB(R2-3)', 'NB(R3-3)', 'NB(R3-3)', 'SVM(R2)', 'NB(R2)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');
 
title({'Comparison of the high scored models with baseline', 'and w/o rank on MIMIC-II Senior(V) Dataset'}, 'FontSize',12,'FontWeight','bold');
ylabel('Fwa score','FontSize',11,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',11,'FontWeight','bold');

set(fig, 'Units', 'Inches');
pos = get(fig, 'Position');
set(fig, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)]);
print(fig, 'mimic2_seniork1v_high_score', '-dpdf', '-r0');
 %print(fig, 'mimic2_seniork1v_high_score', '-dpng');
