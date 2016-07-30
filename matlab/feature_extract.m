close all;
clear all;
clc;
tic
fc=7e7;%�ز�Ƶ��
fs=2e8;%����Ƶ��
fd=2e6;%������
freqsep=1e6;%Ƶƫ
df=25e5;%Ƶ�ʷֱ���
dalpha=0.25e5;%ѭ��Ƶ�ʷֱ���
Ac=1;%���
N_code=1000;%��Ԫ����
N_sample=2000;%����
N_fe=15;%������
N_train = 1000;

mode1= zeros(N_sample,N_fe+1);
mode2= zeros(N_sample,N_fe+1);
mode3= zeros(N_sample,N_fe+1);
mode4= zeros(N_sample,N_fe+1);
mode5= zeros(N_sample,N_fe+1);
mode6= zeros(N_sample,N_fe+1);
mode7= zeros(N_sample,N_fe+1);
mode8= zeros(N_sample,N_fe+1);
mode9= zeros(N_sample,N_fe+1);
mode10= zeros(N_sample,N_fe+1);

datasets = cell(2,2);

for snr = -20:20
for num_sample=1:N_sample    
    fprintf('current snr=%d,',snr);
    fprintf('   itr=%d\n',num_sample);
    y=ask2(N_code,fc,fs,fd,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode1(num_sample,:)=[1,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=ask4(N_code,fc,fs,fd,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode2(num_sample,:)=[2,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=ask8(N_code,fc,fs,fd,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode3(num_sample,:)=[3,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=fsk2(N_code,fc,fs,fd,freqsep,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode4(num_sample,:)=[4,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=fsk4(N_code,fc,fs,fd,freqsep,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode5(num_sample,:)=[5,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=fsk8(N_code,fc,fs,fd,freqsep,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode6(num_sample,:)=[6,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=psk2(N_code,fc,fs,fd,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode7(num_sample,:)=[7,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=psk4(N_code,fc,fs,fd,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode8(num_sample,:)=[8,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=psk8(N_code,fc,fs,fd,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode9(num_sample,:)=[9,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
    y=qam16(N_code,fc,fs,fd,Ac);
    yr=awgn(y,snr,'measured','db');
    [r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7]=featuressgj_extraction(yr,fc,fs,fd);
    mode10(num_sample,:)=[10,r_max,E,m_A,sigma_aa,sigma_ap,sigma_dp,sigma_af,P_max,d_1,d_2,d_3,d_4,d_5,d_6,d_7];    
end
% sample_train=[mode1(1:N_train,:);mode2(1:N_train,:);mode3(1:N_train,:);mode4(1:N_train,:);mode5(1:N_train,:);mode6(1:N_train,:);mode7(1:N_train,:);mode8(1:N_train,:);mode9(1:N_train,:);mode10(1:N_train,:)];
% sample_test=[mode1(N_train+1:end,:);mode2(N_train+1:end,:);mode3(N_train+1:end,:);mode4(N_train+1:end,:);mode5(N_train+1:end,:);mode6(N_train+1:end,:);mode7(N_train+1:end,:);mode8(N_train+1:end,:);mode9(N_train+1:end,:);mode10(N_train+1:end,:)];
if snr <0
    ftrain = strcat('sample_train','_',num2str(abs(snr)));
    ftest = strcat('sample_test','_',num2str(abs(snr)));
    fdata = strcat('datasets','_',num2str(abs(snr)));
else
    ftrain = strcat('sample_train',num2str(snr));
    ftest = strcat('sample_test',num2str(snr));
    fdata = strcat('datasets', num2str(snr));
end

eval([ftrain,'=[mode1(1:N_train,:);mode2(1:N_train,:);mode3(1:N_train,:);mode4(1:N_train,:);mode5(1:N_train,:);mode6(1:N_train,:);mode7(1:N_train,:);mode8(1:N_train,:);mode9(1:N_train,:);mode10(1:N_train,:)];'])
eval([ftest,'=[mode1(N_train+1:end,:);mode2(N_train+1:end,:);mode3(N_train+1:end,:);mode4(N_train+1:end,:);mode5(N_train+1:end,:);mode6(N_train+1:end,:);mode7(N_train+1:end,:);mode8(N_train+1:end,:);mode9(N_train+1:end,:);mode10(N_train+1:end,:)];'])

%eval(['save ',ftrain,' ',ftrain,';']);   %sample
%eval(['save ',ftest,' ',ftest,';']);


eval([fdata, '=cell(2,2);']);             %datasets
eval([fdata, '{1,2}=',ftrain,'(:,1);']);
eval([fdata, '{2,2}=',ftest,'(:,1);']);
eval(['[',ftrain,',',ftest,']=scaleForSVMcircle(',ftrain,',',ftest,',0.05,0.95);']);
eval([fdata, '{1,1}=',ftrain,'(:,2:end);']);
eval([fdata, '{2,1}=',ftest,'(:,2:end);']);

eval(['datasets{1,1}=[datasets{1,1};',fdata,'{1,1}];']);
eval(['datasets{1,2}=[datasets{1,2};',fdata,'{1,2}];']);
eval(['datasets{2,1}=[datasets{2,1};',fdata,'{2,1}];']);
eval(['datasets{2,2}=[datasets{2,2};',fdata,'{2,2}];']);
save(fdata,fdata);
% save sample_train-5 sample_train-5
% save sample_test-5 sample_test-5
end
save datasets datasets
toc