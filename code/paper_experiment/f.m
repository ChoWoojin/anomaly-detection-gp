a = dataset5211.P2(1:101682);
for i = 1:length(a)
    if a(i)==0
        a(i)=a(i-1);
    end
end
figure
findchangepts(a,'MaxNumChanges',5)