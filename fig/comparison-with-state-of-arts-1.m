mimic2_data = [
    0.80786 0.80414 0.79618 0.82088; 
    0.81363 0.81303 0.80166 0.8257; 
    0.6545 0.66671 0.6441 0.69014; 
    0.66083 0.65692 0.65239 0.68215];
fig = figure;
subplot(1,2,1);
hbar1 = bar(mimic2_data);
ylim([0.50 0.85]);
grid on
legend('BL1', 'BL2', 'BL3', 'Proposed (CFC and Rank)', 'Location', 'SouthOutside', 'Orientation','Horizontal');
set(gca,'XTick',[1 2 3 4 ]);
set(gca,'XTickLabel', {'Adult(F)', 'Adult(V)', 'Senior(F)', 'Senior(V)'}, 'FontWeight', 'bold'); 
xlabel('MIMIC-II Datasets','FontSize',12,'FontWeight','bold');
ylabel('Fwa score','FontSize',12,'FontWeight','bold');
title('Performance comparison with the state of arts.', 'FontSize', 14, 'FontWeight', 'bold');

% Get the data for all the bars that were plotted
 x = get(hbar1,'XData');
 y = get(hbar1,'YData');
 
mimic3_data = [
    0.78177 0.783 0.78619 0.79975; 
    0.64569 0.64669 0.63633 0.66387];
subplot(1,2,2);
hbar2 = bar(mimic3_data);
ylim([0.50 0.85]);
grid on
legend('BL1', 'BL2', 'BL3', 'Proposed (CFC and Rank)', 'Location', 'SouthOutside', 'Orientation','Horizontal');
set(gca,'XTick',[1 2]);
set(gca,'XTickLabel', {'Adult', 'Senior'}, 'FontWeight', 'bold'); 
xlabel('MIMIC-III Datasets','FontSize',12,'FontWeight','bold');
ylabel('Fwa score','FontSize',12,'FontWeight','bold');
title('Performance comparison with the state of arts.', 'FontSize', 14, 'FontWeight', 'bold');
