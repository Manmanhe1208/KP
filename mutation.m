function [mutationpop]=mutation(crosspop,pm)
% 变异 单点0-1变异
%Name: mutation.m

[px,py]=size(crosspop);
mutationpop=zeros(px,py);
for i=1:px
    ps=rand;
    if ps<pm
        mpoint=round(rand*py);
        if mpoint<=0
            mpoint=1;
        end
        if crosspop(i,mpoint)==0
            crosspop(i,mpoint)=1;
        else
            crosspop(i,mpoint)=0;
        end
    end
end
mutationpop=crosspop;
