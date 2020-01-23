fig = figure;

%---plot adult graph
subplot(1,2,1);

data_x = [0 1 2 3 4 5 6 7];
data_y1 = [0.783 0.78469 0.78955 0.78722 0.78821 0.78821 0.78619 0.7879];
data_y2 = [0.78901 0.79518 0.79454 0.79555 0.7973 0.7973 0.78989 0.79975];

p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.78 0.805]);
grid on
h = hline(0.78177, 'r', 'BL1');
%h = hline(0.78177, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'south');
set(gca,'XTick',[0 1 2 3 4 5 6 7]);
set(gca,'XTickLabel',{'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'});
%xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'SVM', 'SVM', 'RF', 'SVM', 'RF', 'RF', 'SVM', 'SVM'};
text(data_x, data_y1, labels1, 'VerticalAlignment','bottom','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','bottom','HorizontalAlignment','left');

labels2 = {'RF(R3-3)', 'SVM(R1)', 'SVM(R4-2)', 'SVM(R4-2)', 'RF(R2-1)', 'RF(R2-1)', 'SVM(R4-1)', 'SVM(R4-3)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

title({'Performance comparison of the high scored models with', 'baseline and w/o rank on MIMIC-III Adult Dataset'}, 'FontSize',14,'FontWeight','bold');
ylabel('Fwa score','FontSize',12,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',12,'FontWeight','bold');

%---plot senior graph
subplot(1,2,2);

data_x = [0 1 2 3 4 5 6 7];
data_y1 = [0.64669 0.62891 0.63644 0.63696 0.6378 0.6378 0.63633 0.64773];
data_y2 = [0.65945 0.66333 0.6496 0.64641 0.64652 0.64652 0.64024 0.65183];

p = plot(data_x,data_y1,'g--o',data_x,data_y2,'b-*');
ylim([0.625 0.67]);
grid on
h = hline(0.64569, 'r', 'BL1');
%h = hline(0.64569, 'r:', 'BL1');
legend('No Rank', 'Rank', 'Location', 'south');
set(gca,'XTick',[0 1 2 3 4 5 6 7]);
set(gca,'XTickLabel',{'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'});
%xticklabel_rotate([1 2 3 4 5 6 7 8], 90, {'H-VC', 'H-CFC', 'HV-VC', 'HV-CFC', 'V-VC', 'V-CFC', 'VH-VC', 'VH-CFC'}, 'Fontsize',8);

labels1 = {'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB', 'NB'};
text(data_x, data_y1, labels1, 'VerticalAlignment','bottom','HorizontalAlignment','left', 'FontSize', 8);
%hText1 = text(data_x, data_y1, labels1, 'FontSize', 8);
%set(hText1, 'Rotation', 90, 'VerticalAlignment','bottom','HorizontalAlignment','left');

labels2 = {'NB(R4-3)', 'NB(R4-3)', 'NB(R1)', 'NB(R2-1)', 'NB(R1-1)', 'NB(R1-1)', 'NB(R2-1)', 'NB(R4-3)'};
hText2 = text(data_x, data_y2, labels2, 'FontSize', 8);
set(hText2, 'Rotation', 90, 'VerticalAlignment','top','HorizontalAlignment','left');

title({'Performance comparison of the high scored models with', 'baseline and w/o rank on MIMIC-III Senior Dataset'}, 'FontSize',14,'FontWeight','bold');
ylabel('Fwa score','FontSize',12,'FontWeight','bold');
xlabel('Ensemble Models','FontSize',12,'FontWeight','bold');

