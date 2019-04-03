function [temppop]=selection(pop,fitvalue)
%选择操作 ，轮盘赌的选择方法

totalfit=sum(fitvalue);%求适应度值之和
pfitvalue=fitvalue/totalfit;%单个个体被选择的概率

mfitvalue=cumsum(pfitvalue); %如 fitvalue=[1 2 3 4]，则 cumsum(fitvalue)=[1 3 6 10]
[px,py]=size(pop);
ms=sort(rand(px,1)); %从小到大排列
fitin=1;
tempin=1;
temppop=zeros(size(pop));
while tempin<=px
    if mfitvalue(fitin)>ms(tempin)
        temppop(tempin,:)=pop(fitin,:);
        tempin=tempin+1;
    else
        fitin=fitin+1;
    end
end
