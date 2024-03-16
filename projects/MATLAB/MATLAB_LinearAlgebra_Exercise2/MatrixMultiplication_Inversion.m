function [name, ufid, ...
    A1, A2, A3, A4, ...
    A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
    D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
    E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
    inv_DT, inv_D_T] = Exercise3(n)
    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;

    % --- Part A [10 Points] --- %
    % For-Loop (i)
    A1 = zeros(n);
    for i = 1:n
        for j = 1:n
            A1(i,j) = i + j;
        end
    end

    % For-Loop (ii)
    A2 = zeros(n);
    for i = 1:n
        for j = i:n
            A2(i,j) = i + j;
            A2(j,i) = A2(i,j);
        end
    end

    % (COMMENT; SAME OUTPUT?)

    % For-Loop (i) = n^2 FLOPs
    % For-Loop (ii) = (n^2 / 2) + n FLOPs

    % (COMPARE; WHICH REQUIRES LESS FLOPs?)

    % --- Part B [10 Points] --- %
    % While-Loop (i)
    A3 = zeros(n); % (DO NOT MODIFY THIS LINE)
    i = 1;
    while i <= n
        j = 1;
        while j <= n
            A3(i,j) = i + j;
            j = j + 1;
        end
        i = i + 1;
    end

    % (REWRITE FOR-LOOP (i) USING WHILE LOOPS HERE)

    % While-Loop (ii)
    A4 = zeros(n); % (DO NOT MODIFY THIS LINE)
    i = 1;
    while i <= n
        j = i;
        while j <= n
            A4(i,j) = i + j;
            A4(j,i) = A4(i,j);
            j = j + 1;
        end
        i = i + 1;
    end

    % (REWRITE FOR-LOOP (ii) USING WHILE LOOPS HERE)

    % --- Part C [10 Points] --- %
    A = A1; % (DO NOT MODIFY THIS LINE)
    B = randi([-7, 7], n, n-2); % Matrix B

    ABBA = A*B; % B*A would result in an error; hence it is not included
    % (EXPLAIN WHY EITHER A*B OR B*A DOES NOT WORK / IS UNDEFINED)

    C = randi([-7, 7], n, n); % Matrix C

    AC = A*C;
    CA = C*A;
    % (OBSERVE & EXPLAIN WHY EITHER EQUAL OR NOT EQUAL USING LINEAR ALGEBRA)
    % Aside: Matrix multiplication is function composition.
    % Since matrix multiplication is not commutative, AC and CA are generally not equal

    AI = A*eye(n);
    IA = eye(n)*A;
    % (OBSERVE & EXPLAIN WHY EITHER EQUAL OR NOT EQUAL USING LINEAR ALGEBRA)
    % Hint: I_n, the identity matrix, has some special property.
    % AI and IA are equal and both equal to A, demonstrating the identity property of multiplication

    % --- Part D [10 Points] --- %
    inverse_A = inv(A); % Finding the inverse of A
    % (OBSERVE WARNING & CONCLUDE INVERTIBILITY OF A)

    D = [1, 0, -1; 2, 1, -2; 0, 1, -1]; % Creating matrix D
    inverse_D = inv(D);

    % Complete using *only* two lines and using the rref function (cannot use
    % inv function)!
    rref_something = rref([D eye(size(D))]); % Placeholder for illustrative purposes
    rref_inverse_D = rref_something(:, size(D)+1:end); % Assuming the use of rref to find the inverse

    inv_inv_D = D * rref_inverse_D; % Checking if double inversion yields the original matrix
    % (OBSERVE & GENERALIZE)

    E = [1 -2 2; 1 -1 0; 1 -1 2]; % Creating matrix E

    inverse_DE = inv(D*E);
    inv_D_inv_E = inv(D)*inv(E);
    inv_E_inv_D = inv(E)*inv(D);
    % The inverse of the product of two invertible matrices D and C is
    % equal to (FINISH GENERALIZATION)
    % In general, inv(D*E) = inv(E)*inv(D), demonstrating the reversal property in multiplication of inverses

    inv_DT = inv(D');
    inv_D_T = (inv(D))';
    % The inverse of the transpose of an invertible matrix D is equal to
    % (FINISH GENERALIZATION)
    % inv(D') and (inv(D))' are equal, demonstrating the transpose property of inverse matrices
end
