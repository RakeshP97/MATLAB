

fileList ={'RedRidingHood.txt', 'PrincessPea.txt','Cinderella.txt', 'CAFA1.txt', 'CAFA2.txt', 'CAFA3.txt'};
stwords = stopWords('Language','en');
customStopWords = ["(" ")" ":" '11' '18' '3681' '56' '866'];
f = strcat(lower(fileread(fileList{1})),' ', lower(fileread(fileList{2})), ' ',lower(fileread(fileList{3})),' ',lower(fileread(fileList{4})), ' ', lower(fileread(fileList{5})), ' ', lower(fileread(fileList{6}))); 
data = textscan(f, '%s');
documents = tokenizedDocument(f);
newDocuments = removeWords(documents, customStopWords);
t = tokenDetails(newDocuments);
u_words = unique(t.Token);
tf = zeros(length(u_words),6);
for i = 1:length(fileList)
    f7 = lower(fileread(fileList{i}));
    data = textscan(f7, '%s');
    b=cellfun(@(x) sum(ismember(data{:,:},x)),u_words(:),'un',0);
    tf(:,i)= [b{:}];
end
df = arrayfun(@(x) sum(tf(x,:) > 0), 1:length(u_words));
idf = arrayfun(@(x) log10(length(fileList)\x), df,'un',0);
idf = [idf{:}];
idf(isinf(idf)|isnan(idf)) = 0;
tf_idf = zeros(length(u_words),6);
for i = 1:length(u_words)
        tf_idf(i,1:6) = tf(i,1:6)* idf(i); 
end
cosine_dist= zeros(6,6);
for i = 1:6
    for j = 1:6
        cosine_dist(i,j)=pdist([tf_idf(:,i)';tf_idf(:,j)'],'cosine');
    end
end

clims = [0 1];
imagesc(cosine_dist,clims)
colormap(gray)
colorbar
xticklabels({'RRH','PPea','Cinde','CAFA1','CAFA2','CAFA3'});
yticklabels({'RRH','PPea','Cinde','CAFA1','CAFA2','CAFA3'});    
title('Cosine Distance');

