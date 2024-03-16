function [E_matrices_in_order, A_inverse] = ExtraCredit()
    % ==> FINDING A^-1 WITH ELEMENTARY MATRICES <==
    %           Authored by Robert Conde
    %
    % You will determine the inverse of A using ONLY elementary matrices.
    % You may not call inv(...) or rref(...).
    % 
    % This process is covered in your book in "Chapter 2.2: The Inverse of
    % a Matrix" (see Theorem 7 & Proof). We will use the same numbering
    % scheme E1, E2, ..., En for (En * ... * E_2 * E1) * A = I. You will
    % determine matrices E1, ..., En so find the inverse of A,
    % A^-1 = (En * ... * E_2 * E1).
    %
    % You may look up example of this being done but your work should be
    % original. Have fun.

    % --- Name & UFID ---%
    % name = "Daniel Monzon";
    % ufid = 38883733;
    
    % This is our 3x4 matrix A that we will find the inverse of
    A_original = [1 2 2; % DO NOT MODIFY A_original!
        3 7 8;
        6 5 0];
    A = A_original;
    
    
    % Repeat the following 4 commands until A equals the 3x3 identity matrix
    E1 = [1 0 0; % Enter your first elementary matrix
        0 1 0;
        0 0 1];
    A = E1 * A;
    disp("A now is...")
    disp(A); % We want to see A being reduced to the identity

    E2 = [1 0 0; % Enter your second elementary matrix
        0 1 0;
        0 0 1];
    A = E2 * A;
    disp("A now is...")
    disp(A);
    
    % Repeat for E3, E4, ... as needed
    E3 = [1 0 0; 0 1/5 0; 0 0 1]; % Placeholder for the correct scaling operation
    A = E3 * A;
    disp("A now is...")
    disp(A);
    
    E4 = [1 0 0; 0 1 0; 0 -2 1]; % Placeholder for the correct subtraction operation
    A = E4 * A;
    disp("A now is...")
    disp(A);

    % List your matrices here as shown
    E_matrices_in_order = {E1, E2, E3, E4}; % Should look like {E1, E2, E3, ...}
    
    % Multiply your matrices here as shown
    A_inverse = E4 * E3 * E2 * E1; % Should look like E1 * E2 * E3 * ...
    
    % DO NOT MODIFY ANYTHING BELOW
    disp("Your Inverse Times A is...");
    disp(A_inverse * A_original);
end
