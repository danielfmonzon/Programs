function [name, ufid, ...
    A1, A2, A3, dep_A1, dep_A2, dep_A3, ...
    B1, B2, B3, dep_B1, dep_B2, dep_B3, ...
    example_B, dep_B, example_C, dep_C] = Exercise1()
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;

    % --- Part A [10 Points] --- %
    % Generate three 3x6 random matrices and check for linear dependence
    % (1) m < n
    A1 = randi([-7, 7], 3, 6);
    dep_A1 = dependence(A1);

    A2 = randi([-7, 7], 3, 6);
    dep_A2 = dependence(A2);

    A3 = randi([-7, 7], 3, 6);
    dep_A3 = dependence(A3);

    % (2) m > n
    B1 = randi([-7, 7], 6, 3);
    dep_B1 = dependence(B1);

    B2 = randi([-7, 7], 6, 3);
    dep_B2 = dependence(B2);

    B3 = randi([-7, 7], 6, 3);
    dep_B3 = dependence(B3);

    % --- Part B [10 Points] --- %
    % (OBSERVE & EXPLAIN)
    % Based on linear algebra principles, matrices with more columns than rows (3x6)
    % are typically linearly dependent because there are more vectors than dimensions in the space.
    
    % A 3x6 matrix is typically linearly dependent because it has more vectors than available dimensions.
    example_B = [1, 2, 3, 4, 5, 6; 2, 4, 6, 8, 10, 12; 3, 6, 9, 12, 15, 18];
    % dependent
    dep_B = dependence(example_B);

    % --- Part C [10 Points] --- %
    % (OBSERVE & EXPLAIN)
    % For 6x3 matrices, they are not always linearly independent. An example is when
    % one column is a linear combination of the others.
    
    % A 6x3 matrix can be independent, but it's not guaranteed. For example, if one column is twice another.
    example_C = [1, 2, 3; 2, 4, 6; 3, 6, 9; 4, 8, 12; 5, 10, 15; 6, 12, 18];
    % can vary
    dep_C = dependence(example_C);
end
