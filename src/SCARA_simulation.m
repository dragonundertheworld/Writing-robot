%% ���û����˹��������⺯��fkine���з���
clear,clc,close;
%% �������������DH���� ��ʱ��ʼ״̬����һ��ֱ����
L1=Link('theta',0,'a',0,'alpha',0,'offset',0,'qlim',[0 118],'modified');            %ƽ�ƹؽ�
L2=Link('d',0,'a',271.2,'alpha',0,'offset',0,'qlim',[-115 115]*pi/180,'modified');  %��ת�ؽ�
L3=Link('d',0,'a',320,'alpha',0,'offset',0,'qlim',[-135 135]*pi/180,'modified');    %��ת�ؽ�
L4=Link('d',0,'a',280,'alpha',0,'offset',0,'qlim',[-360 360]*pi/180,'modified');    %��ת�ؽ�
robot = SerialLink([L1 L2 L3 L4],'name','Scara');   %�������˻�����
Q=[0 0 0 0];   %��ʼλ�úͽǶ�
forward_Q=[Q(1) 0 0 0]+[0 Q(2) Q(3) Q(4)]/180*pi; %�ؽ�1��ƽ�������ؽ�2~4��ת����
T04=robot.fkine(forward_Q);    %���������������α任����
%% ��ĩ��λ��  Return solution for sequential rotations about X, Y, Z axes
rpy=tr2rpy(T04, 'xyz')*180/pi;          
%% ���涯��
W=[-1200 +1200  -1200 +1200 -1200 +1200];       %�����ռ�
% robot.plot(T04_Q,'workspace',W);             %��ʾ3ά����
robot.plot(forward_Q,'workspace',W,'tilesize',400);     %��ʾ3ά����
robot.teach(forward_Q,'rpy');            %��ʾĩ��λ�ˣ��Ƕȵ���GUI����