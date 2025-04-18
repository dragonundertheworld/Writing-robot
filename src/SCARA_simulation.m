%% 采用机器人工具箱正解函数fkine进行仿真
clear,clc,close;
%% 建立三轴机器人DH参数 此时初始状态处于一条直线上
L1=Link('theta',0,'a',0,'alpha',0,'offset',0,'qlim',[0 118],'modified');            %平移关节
L2=Link('d',0,'a',271.2,'alpha',0,'offset',0,'qlim',[-115 115]*pi/180,'modified');  %旋转关节
L3=Link('d',0,'a',320,'alpha',0,'offset',0,'qlim',[-135 135]*pi/180,'modified');    %旋转关节
L4=Link('d',0,'a',280,'alpha',0,'offset',0,'qlim',[-360 360]*pi/180,'modified');    %旋转关节
robot = SerialLink([L1 L2 L3 L4],'name','Scara');   %建立连杆机器人
Q=[0 0 0 0];   %初始位置和角度
forward_Q=[Q(1) 0 0 0]+[0 Q(2) Q(3) Q(4)]/180*pi; %关节1是平移量，关节2~4是转动量
T04=robot.fkine(forward_Q);    %工具箱求正解的齐次变换矩阵
%% 求末端位姿  Return solution for sequential rotations about X, Y, Z axes
rpy=tr2rpy(T04, 'xyz')*180/pi;          
%% 仿真动画
W=[-1200 +1200  -1200 +1200 -1200 +1200];       %工作空间
% robot.plot(T04_Q,'workspace',W);             %显示3维动画
robot.plot(forward_Q,'workspace',W,'tilesize',400);     %显示3维动画
robot.teach(forward_Q,'rpy');            %显示末端位姿，角度调节GUI界面