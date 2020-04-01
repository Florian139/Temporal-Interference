%Plot raw LFP

plot(t,test)

%Plot Time-Frequency analysis

[S,F,T,P]=spectrogram(test,2000,500,2000,500, 'psd');
surf((T-20)/58.25,F,abs(P),'EdgeColor','none','FaceColor','interp');
axis xy; axis tight; colormap(jet); view(0,90);
caxis([0 1000])
%ylim([0 20])
colorbar
