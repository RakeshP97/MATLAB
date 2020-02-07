!

function [topn,lastn] = wordscount(n)
f = fileread('TheTortoiseAndTheHare.txt');
f= lower(f);
data = textscan(f, '%s', 'delimiter', ' ');
u_words = unique(data{:,:});
b=cellfun(@(x) sum(ismember(data{:,:},x)),u_words(:),'un',0);
[~,i] = sortrows(b,1,'descend');
words_count = [u_words(i),b(i)];
[~,ii] = unique(cellfun(@num2str,b,'uni',0));
uni_count = b(ii);
uni_words = u_words(ii);
[~,ii] = sortrows(uni_count,[1],'descend');
sorted_count= uni_count(ii);
sorted_words = uni_words(ii);
top_n = [sorted_words,sorted_count];
if n < 8
    topn = top_n(1:n,:);
else
    n = 8;
    topn = top_n(1:n,:);
end
flip_up = flipud(top_n);
lastn = flip_up(1:n,:);
disp(words_count);
end



