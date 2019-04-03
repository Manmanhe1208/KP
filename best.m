function [bestweight,bestvalue]=best(mutationpop,newfitvalue,weight)
%寻找最优个体，包括其重量和价值。

[px,py]=size(mutationpop);
bestvalue=newfitvalue(1);
for i=2:px
    if newfitvalue(i)>bestvalue
        bestvalue=newfitvalue(i);
    end
    
end

[z index]=max(newfitvalue);%计算最优价值，和最优重量。

bestweight=0;
for i=index;
    for j=1:py
        bestweight=weight(j)*mutationpop(i,j)+bestweight;
    end
end
