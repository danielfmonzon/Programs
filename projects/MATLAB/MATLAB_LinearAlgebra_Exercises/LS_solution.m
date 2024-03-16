function [system_type, name, ufid] = LS_solution(n, A, Ab)
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;
    
    % (PURPOSE OF FUNCTION)
    % n = (INPUT ARGUMENT COMMENT)
    % A = (INPUT ARGUMENT COMMENT)
    % Ab = (INPUT ARGUMENT COMMENT)

    inc = "Inconsistent";
    con_with_one_sol = "Consistent with One Solution";
    con_with_inf_sols = "Consistent with Infinite Solutions";
     
    % Determine system type using Rouché-Capelli Theorem
    rankA = rank(A);
    rankAb = rank(Ab);

    % Applying Rouché-Capelli Theorem
    if rankA < rankAb
        system_type = inc;
    elseif rankA == rankAb && rankA == n
        system_type = con_with_one_sol;
    elseif rankA == rankAb && rankA < n
        system_type = con_with_inf_sols;
    end
end
