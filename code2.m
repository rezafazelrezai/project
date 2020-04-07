clear 
close all
tmp = load('bidmc_data.mat');
data = tmp.data;
N = 60000;
fs = 125;
time = (0:N-1)/fs;
for n = 1:length(data)
    ecg(:,n) = data(n).ekg.v(1:N)';
    ppg(:,n) = data(n).ppg.v(1:N)';
    tmp = data(n).ref.params.hr.v(1:480);
    tmp2 = repmat(tmp,1,fs);
    hr(:,n) = reshape(tmp2',1,N
    
    
    
end






        


