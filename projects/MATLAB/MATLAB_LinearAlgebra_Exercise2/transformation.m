function [transform_type, name, ufid] = transformation(A)
    % Purpose: (COMMENT)
    % Input Argument [A]: (COMMENT)
    % Output Argument [transform_type]: (COMMENT)

    % --- Name & UFID --- %
    name = "Daniel Monzon";
    ufid = 38883733;
    
    % Get the size of A
    [m, n] = size(A); % # of rows and columns of A, respectively

    both = "Onto and one-to-one";
    onto = "Onto but not one-to-one";
    one_to_one = "One-to-one but not onto";
    neither = "Neither onto nor one-to-one";

    rank_A = rank(A);
    % Use dependence.m as a guide to write this new function. Enter code below.

    % Determine the transformation type
    if rank_A == m && rank_A == n
        transform_type = both; % Onto and one-to-one
    elseif rank_A == m
        transform_type = onto; % Onto but not one-to-one (implies n > m)
    elseif rank_A == n
        transform_type = one_to_one; % One-to-one but not onto (implies m > n)
    else
        transform_type = neither; % Neither onto nor one-to-one
    end

end
