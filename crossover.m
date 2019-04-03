function [crosspop]=crossover(temppop,pc)
%交叉
%遗传算法子程序
%Name: crossover.m

[px,py]=size(temppop);
crosspop=zeros(px,py);
for i=1:2:px-1
    ps=rand;
    if ps<pc
        cpoint=round(rand*py);
        crosspop(i,:)=[temppop(i,1:cpoint),temppop(i+1,cpoint+1:py)];
        crosspop(i+1,:)=[temppop(i+1,1:cpoint),temppop(i,cpoint+1:py)];
    else
        crosspop(i,:)=temppop(i,:);
        crosspop(i+1,:)=temppop(i+1,:);
    end
end

