function [name, ufid, B, pivcols, compare, m, n, solution_type] = Exercise2(A, b)
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;

    % --- Part A [10 Points] --- %
    % Calculating RREF of the augmented matrix [A b]
    Ab = [A b]; % Augmented matrix
    [B, pivcols] = rref(Ab); % B is the RREF of [A b] and pivcols are the pivot columns

    % --- Part B [10 Points] --- %
    % Using rank_comp function to compare ranks
    compare = rank_comp(A, Ab);

    % --- Part C [10 Points] --- %
    % Determining the size of matrix A
    [m, n] = size(A);
    
    % Calling LS_solution to determine the system type
    [solution_type, ~, ~] = LS_solution(n, A, Ab);
end
