function [name, ufid, u, v, w, x, A, A_11, A_23, A2, A3, B, B2, B3, ...
          b, aug, rref_Ab1, rref_Ab2, pivcols, compare] = Exercise()
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;

    % --- Extra Credit [5 Points] --- %
    % * Vectors *
    u = [1 3 5 7]; % Creates a row vector [1 3 5 7]
    v = [1; 3; 5; 7]; % Creates a column vector [1; 3; 5; 7]
    w = 1:7; % or [1:7] Creates a row vector [1 2 3 4 5 6 7]
    x = 1:2:7; % or [1:2:7] Creates a row vector [1 3 5 7], incrementing by 2
    
    % * Matrices *
    % Enter entries manually
    A = [1 2 3; 4 5 6]; % Creates a 2x3 matrix
    A_11 = A(1,1); % Extracts the element in the first row, first column of A
    A_23 = A(2,3); % Extracts the element in the second row, third column of A
    A2 = A(2,:); % Extracts the second row of A
    A3 = A(:,3); % Extracts the third column of A
    
    % Randomly generated matrices
    B = randi([-10,10],6,4); % Creates a 6x4 matrix with random integers between -10 and 10
    B2 = B(2:5,2:4); % Extracts a submatrix from B (rows 2 to 5, columns 2 to 4)
    B3 = B([2,5],2:4); % Extracts a submatrix from B (rows 2 and 5, columns 2 to 4)
    
    % * Solving Systems *
    % Solve Ax=b using RREF
    b = [1; 2];
    aug = [A b]; % Creates an augmented matrix by appending vector b to the matrix A
    rref_Ab1 = rref([A b]); % (COMMENT)
    %rref_Ab2 = NaN; % (REMOVE THIS LINE)
    %pivcols = NaN; % (REMOVE THIS LINE)
    [rref_Ab2, pivcols] = rref([A b]); % Computes the reduced row echelon form of the augmented matrix [A b]
    
    % Solve Ax=b by comparing the ranks
    compare = rank_comp(A, aug); % Calls the function rank_comp with A and aug, and stores the result in compare
end
