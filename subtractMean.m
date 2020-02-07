

function [Xmu,mu] = subtractMean(X)
    mu = mean(X);
    Xmu = X - mu;
end
    
    
    