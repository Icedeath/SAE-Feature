begin_snr = -5;
end_snr = 15

datasets=cell(2,2);
for snr =begin_snr:end_snr
    if snr <0
        fdata = strcat('datasets','_',num2str(abs(snr)));
    else
        fdata = strcat('datasets', num2str(snr));
    end
    
    eval(['load ',fdata,';'])
    
    eval(['datasets{1,1}=[datasets{1,1};',fdata,'{1,1}];']);
    eval(['datasets{1,2}=[datasets{1,2};',fdata,'{1,2}];']);
    eval(['datasets{2,1}=[datasets{2,1};',fdata,'{2,1}];']);
    eval(['datasets{2,2}=[datasets{2,2};',fdata,'{2,2}];']);
end

save datasets_com datasets