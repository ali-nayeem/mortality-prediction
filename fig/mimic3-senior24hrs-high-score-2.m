data_x = [1 2 3 4 5 6 7 8];
data_y1 = [0.64669 0.62891 0.63644 0.63696 0.6378 0.6378 0.63633 0.64773];
data_y2 = [0.65945 0.66333 0.6496 0.64641 0.64652 0.64652 0.64024 0.65183];

fig = figure; % Create new figure
p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.625 0.67]);
%grid on
%h = hline(0.64569, 'r', 'BL1');
h = hline(0.64569, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'south');
xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB'};
text(data_x, data_y1, labels1, 'VerticalAlignment','bottom','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','bottom','HorizontalAlignment','left');

labels2 = {'NB(R4-3)', 'NB(R4-3)', 'NB(R1)', 'NB(R2-1)', 'NB(R1-1)', 'NB(R1-1)', 'NB(R2-1)', 'NB(R4-3)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

title({'Comparison of the high scored models with baseline', 'and w/o rank on MIMIC-III Senior Dataset'}, 'FontSize',14,'FontWeight','bold');
ylabel('Fwa score','FontSize',12,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',12,'FontWeight','bold');

set(fig, 'Units', 'Inches');
pos = get(fig, 'Position');
set(fig, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)]);
print(fig, 'mimic3_senior24hrs_high_score', '-dpdf', '-r0');
%print(fig, 'mimic3_senior24hrs_high_score', '-dpng');
