function [name, ufid, ...
          bA, A1, Ab1, sol1, A2, Ab2, sol2, A3, Ab3, sol3, ...
          example_A1, example_b1, example_type1, ...
          bC, A4, Ab4, sol4, A5, Ab5, sol5, A6, Ab6, sol6, ...
          example_A2, example_b2, example_type2, ...
          example_A3, example_b3, example_type3] = Exercise3()
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;

   % --- Part A: Underdetermined Systems [10 Points] --- %
    bA = randi([-7, 7], 2, 1);
    
    A1 = randi([-7, 7], 2, 3);
    Ab1 = [A1, bA];
    [~, n] = size(A1);
    sol1 = LS_solution(n, A1, Ab1);

    A2 = randi([-7, 7], 2, 3);
    Ab2 = [A2, bA];
    [~, n] = size(A2);
    sol2 = LS_solution(n, A2, Ab2);

    A3 = randi([-7, 7], 2, 3);
    Ab3 = [A3, bA];
    [~, n] = size(A3);
    sol3 = LS_solution(n, A3, Ab3);
    
    % --- Part B: Explanation of Part A [10 Points] --- %
    %{ Underdetermined systems typically have fewer equations than unknowns, 
    % which often results in infinitely many solutions. This is because 
    % there are not enough constraints to pin down exact values for all 
    % the variables. In such systems, some variables become free variables, 
    % which can take on an infinite range of values, leading to an infinite 
    % number of solutions. However, an underdetermined linear system can have 
    % a unique solution if additional constraints or conditions are applied that 
    % align perfectly to determine all variable values.
    % An example of an inconsistent underdetermined system is where the 
    % equations contradict each other, making it impossible to find a solution 
    % that satisfies all equations simultaneously.%}

    % (LEAVE THE FOLLOWING AS NaN OR PROVIDE AN EXAMPLE IF POSSIBLE)
    example_A1 = [1, -1; 1, -1]; % Two parallel lines (equations)
    example_b1 = [2; 3];         % Different y-intercepts, no intersection
    [~, n] = size(example_A1); % (UNCOMMENT IF EXAMPLE)
    example_type1 = LS_solution(n, example_A1, [example_A1, example_b1]); % (UNCOMMENT IF EXAMPLE)
   
    % --- Part C: Overdetermined Systems [10 Points] --- %
    bC = randi([-7, 7], 3, 1);

    A4 = randi([-7, 7], 3, 2);
    Ab4 = [A4, bC];
    [~, n] = size(A4);
    sol4 = LS_solution(n, A4, Ab4);

    A5 = randi([-7, 7], 3, 2);
    Ab5 = [A5, bC];
    [~, n] = size(A5);
    sol5 = LS_solution(n, A5, Ab5);

    A6 = randi([-7, 7], 3, 2);
    Ab6 = [A6, bC];
    [~, n] = size(A6);
    sol6 = LS_solution(n, A6, Ab6);
    
    % --- Part D: Explanation of Part C [10 Points] --- %
    %{ Overdetermined systems have more equations than unknowns. These 
    % systems are typically inconsistent because it's unlikely that all 
    % equations can be satisfied simultaneously with a limited number of 
    % variables. The presence of extra constraints (more equations) 
    % generally results in no solutions. However, a solution can exist 
    % if the additional equations are not independent or if they happen 
    % to intersect at a single point. %}

    % (PROVIDE AN EXAMPLE WITH ONE SOLUTION BELOW)
    example_A2 = [1, 1; -1, 1; 0, 1];
    example_b2 = [2; 2; 2];
    [~, n] = size(example_A2); % (UNCOMMENT)
    example_type2 = LS_solution(n, example_A2, [example_A2, example_b2]); % (UNCOMMENT)

    % (PROVIDE AN EXAMPLE WITH INFINITELY MANY SOLUTIONS BELOW)
    example_A3 = [1, 2; 2, 4; -1, -2];
    example_b3 = [3; 6; -3];
    [~, n] = size(example_A3); % (UNCOMMENT IF EXAMPLE)
    example_type3 = LS_solution(n, example_A3, [example_A3, example_b3]); % (UNCOMMENT)
end
