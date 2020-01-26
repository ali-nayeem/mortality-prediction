fig = figure;

%---plot adult-k1f graph
subplot(1,2,1);

data_x = [0 1 2 3 4 5 6 7];
data_y1 = [0.80414 0.80294 0.80152 0.80673 0.80786 0.80786 0.79618 0.81563];
data_y2 = [0.81723 0.82088 0.81305 0.80965 0.81419 0.81419 0.81625 0.81228];

p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.79 0.83]);
grid on
h1 = hline(0.80786, 'r', 'BL1');
%h1 = hline(0.80786, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'south');
set(gca,'XTick',[0 1 2 3 4 5 6 7]);
set(gca,'XTickLabel',{'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'});
%xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'SVM', 'RF', 'RF', 'RF', 'SVM', 'SVM', 'SVM', 'SVM'};
text(data_x, data_y1, labels1, 'VerticalAlignment','top','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

labels2 = {'SVM(R4-2)', 'SVM(R4-2)', 'SVM(R1-2)', 'RF(R1-3)', 'RF(R3-3)', 'RF(R3-3)', 'SVM(R4-2)', 'SVM(R4-2)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

title({'Performance comparison of the high scored models with', 'baseline and w/o rank on MIMIC-II Adult(F) Dataset'}, 'FontSize',14,'FontWeight','bold');
ylabel('Fwa score','FontSize',12,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',12,'FontWeight','bold');

%---plot adult-k1v graph
subplot(1,2,2);

data_x = [0 1 2 3 4 5 6 7];
data_y1 = [0.81303 0.82154 0.81578 0.81224 0.81645 0.81645 0.80166 0.81785];
data_y2 = [0.81673 0.8226 0.8191 0.81752 0.82134 0.82134 0.8257 0.82232];

p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.80 0.83]);
grid on
h2 = hline(0.81363, 'r', 'BL1');
%h2 = hline(0.81363, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'south');
set(gca,'XTick',[0 1 2 3 4 5 6 7]);
set(gca,'XTickLabel',{'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'});
%xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'SVM', 'SVM', 'RF', 'RF', 'SVM', 'SVM', 'SVM', 'SVM'};
text(data_x, data_y1, labels1, 'VerticalAlignment','top','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

labels2 = {'SVM(R1)', 'SVM(R4-2)', 'SVM(R1-2)', 'RF(R4-2)', 'RF(R4-3)', 'RF(R4-3)', 'SVM(R1-2)', 'SVM(R4-2)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

title({'Performance comparison of the high scored models with', 'baseline and w/o rank on MIMIC-II Adult(V) Dataset'}, 'FontSize',14,'FontWeight','bold');
ylabel('Fwa score','FontSize',12,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',12,'FontWeight','bold');

%following two lines creates problem for legend for the second subplot - hence these are commented.
%fh = suptitle('Comparison of the high scored models with baseline and w/o rank on MIMIC-II Adult Dataset');
%set(fh,'FontSize',14,'FontWeight','bold');



