function [name, ufid, ...
    transform_A1, transform_A2, transform_A3, ...
    transform_B1, transform_B2, transform_B3, ...
    C1, C2, C3, transform_C1, transform_C2, transform_C3, ...
    example_neither, transform_neither] = Exercise2(A1, A2, A3, B1, B2, B3)
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;

    % --- Part A (see transformation.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    % Example call for A1 (repeat for A2, A3, B1, B2, B3)
    transform_A1 = transformation(A1);
    transform_A2 = transformation(A2);
    transform_A3 = transformation(A3);

    transform_B1 = transformation(B1);
    transform_B2 = transformation(B2);
    transform_B3 = transformation(B3);

    % Generating and transforming C1, C2, C3
    C1 = randi([-7, 7], 3, 3);
    C2 = randi([-7, 7], 3, 3);
    C3 = randi([-7, 7], 3, 3);

    transform_C1 = transformation(C1);
    transform_C2 = transformation(C2);
    transform_C3 = transformation(C3);

    % --- Part C [10 Points] --- %

    % (1) When m < n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING) 
    % When m<n: The system has more variables than equations, leading to at least one free variable, 
    % making it impossible for the transformation to be one-to-one.

    % (2) When m > n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING)
    % When m>n: The system has more equations than variables, which means it cannot cover the entire codomain, 
    % hence it cannot be onto.

    % (3) When m = n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING)
    % When m=n: The system can potentially be both onto and one-to-one if the matrix A is invertible (i.e., has full rank). 
    % If A does not have full rank, it can be neither onto nor one-to-one.

    example_neither = [5 0 0; 10 -6 0; -6 0 0];
    transform_neither = transformation(example_neither); % Expected to return 'neither'

    % (4) When m = n, a transformation T(x) = Ax (EXPLAIN USING MATHEMATICAL
    %     REASONING)
    % This matrix has a determinant of zero, indicating it is not invertible, and hence the transformation it represents 
    % is neither onto nor one-to-one. The rank of D is less than 3 (its dimension), confirming it does not satisfy the 
    % conditions for being bijective. In conclusion, when m=n, the nature of the linear transformation T(x)=Ax—whether it 
    % is onto, one-to-one, both, or neither—depends on the rank of the matrix A. A square matrix A leads to a bijective 
    % transformation if and only if it is invertible, which is equivalent to having a full rank.
end
