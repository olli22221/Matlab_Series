function y = rechteckimpuls(K,M,N)

if K + M > N
    y = [zeros(1,K) ones(1,N-K)];
    
else
    y = [zeros(1,K),ones(1,M),zeros(1,N-(K+M))];

end
end