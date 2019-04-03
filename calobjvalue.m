function [objvalue]=calobjvalue(pop,n,popsize,value,weight,capacity)
%���÷�����������Ŀ�꺯��������Ӧ��
[px,py]=size(pop);
for i=1:px
    sumv(i)=0;
    sumw(i)=0;
    for j=1:py
        sumv(i)=sumv(i)+value(j)*pop(i,j);
        sumw(i)=sumw(i)+weight(j)*pop(i,j);
    end
    if sumw(i)>capacity
        sumv(i)=0;
    else
        sumv(i)=sumv(i);
    end
    
    objvalue(i)=sumv(i);
end
