function [name, ufid, ...
          A, b, c, D, x1, x2, x3, aug, ...
          x4, x5, x6, x7, x8, ...
          F1, F2, E, m, n, E1, E2] = Exercise1()
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;

     % --- Part A [10 Points] --- %
    % Assuming placeholder values for matrices A, b, c, and D
    A = [1 2 3; 4 5 6; 7 8 9];
    b = [1; 2; 3];
    c = [4; 5; 6];
    D = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
    x1 = A(2,:); % Extracts the second row of A
    x2 = D(:,4); % Extracts the fourth column of D
    x3 = [A b];  % Concatenates A and b (columns)
    aug = [A; c']; % Concatenates A and transposed c (rows)

    % --- Part B [10 Points] --- %
    x4 = eye(8);      % 8x8 identity matrix
    x5 = zeros(6,3);  % 6x3 matrix of zeros
    x6 = zeros(5);    % 5x5 matrix of zeros
    x7 = ones(3,5);   % 3x5 matrix of ones
    x8 = diag(c);     % Diagonal matrix with elements of c

    % --- Part C [10 Points] --- %
    F1 = randi([-7,7],3,7); % 3x7 matrix of random integers between -7 and 7
    F2 = F1;                % Copy of F1
    F2(:, [3 6]) = F1(:, [6 3]); % Swapping columns 3 and 6

    E = [A F2]; % Concatenates A and F2 (columns)
    [m, n] = size(E); % Gets the size of matrix E

    E1 = E(:, [3 7]); % Extracts columns 3 and 7 from E
    E2 = E(:, 3:7);   % Extracts columns 3 to 7 from E
end
