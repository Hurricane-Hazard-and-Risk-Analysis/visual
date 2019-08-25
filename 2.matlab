%5,11,12,15
%4,5,4,4,4

test2 =19;
s=struct(bnet3.CPD{test2});  % violate object privacy
test1 = find(dag(:,test2)==1);
test1 = node_sizes(test1);
test3 = length(test1)

if(test3 == 2)
temp = [];
count = 0;
for i = 1:test1(1)
for j = 1:test1(2)
count = count+1;
for l = 1:node_sizes(test2)
temp(count,l) = s.CPT(i,j,l);
end
end
end
end

if(test3 == 3)
temp = [];
count = 0;
for i = 1:test1(1)
for j = 1:test1(2)
for m = 1:test1(3)

count = count+1;
for l = 1:node_sizes(test2)
temp(count,l) = s.CPT(i,j,m,l);
end
end
end
end
end

if(test3 == 4)
temp = [];
count = 0;
for i = 1:test1(1)
for j = 1:test1(2)
for m = 1:test1(3)
for n = 1:test1(4)

count = count+1;
for l = 1:node_sizes(test2)
temp(count,l) = s.CPT(i,j,m,n,l);
end
end
end
end
end
end


%for i=1:length(temp(:,1))
%if sum(temp(i,:)) ~=1
%temp(i,:) = ones(1,length(temp(i,:)))/length(temp(i,:));
%end
%end
