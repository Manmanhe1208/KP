function [temppop]=selection(pop,fitvalue)
%ѡ����� �����̶ĵ�ѡ�񷽷�

totalfit=sum(fitvalue);%����Ӧ��ֵ֮��
pfitvalue=fitvalue/totalfit;%�������屻ѡ��ĸ���

mfitvalue=cumsum(pfitvalue); %�� fitvalue=[1 2 3 4]���� cumsum(fitvalue)=[1 3 6 10]
[px,py]=size(pop);
ms=sort(rand(px,1)); %��С��������
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
