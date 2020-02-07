

function [U, S] = myPCA(Xmu)
    C = cov(Xmu);
    [U,S] = eig(C);
    [d,idx] = sort(diag(S),'desc');
     U = U(:,idx);
end