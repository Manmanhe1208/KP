function [newobjvalue]=newcalobjvalue(mutationpop,n,popsize,value,weight,capacity)
%计算新一代的目标函数值


[px,py]=size(mutationpop);
for i=1:px
    sumv(i)=0;
    sumw(i)=0;
    for j=1:py
        
        sumv(i)=sumv(i)+value(j)*mutationpop(i,j);
        sumw(i)=sumw(i)+weight(j)*mutationpop(i,j);
    end
    if sumw(i)>capacity
        sumv(i)=0;
    else
        sumv(i)=sumv(i);
        
        
    end
    
    newobjvalue(i)=sumv(i);
end

