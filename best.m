function [bestweight,bestvalue]=best(mutationpop,newfitvalue,weight)
%Ѱ�����Ÿ��壬�����������ͼ�ֵ��

[px,py]=size(mutationpop);
bestvalue=newfitvalue(1);
for i=2:px
    if newfitvalue(i)>bestvalue
        bestvalue=newfitvalue(i);
    end
    
end

[z index]=max(newfitvalue);%�������ż�ֵ��������������

bestweight=0;
for i=index;
    for j=1:py
        bestweight=weight(j)*mutationpop(i,j)+bestweight;
    end
end
