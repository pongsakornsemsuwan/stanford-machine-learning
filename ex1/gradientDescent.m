function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % fprintf(' theta0 = %f\n', theta(1,1));
    % fprintf(' theta1 = %f\n', theta(2,1));

    % theta(1,1) = theta(1,1) - (alpha / m * sum( (X*theta-y) ) * X(1,1) )
    % theta(2,1) = theta(2,1) - (alpha / m * sum( (X*theta-y) ) * X(2,1) )

    % X = 97 x 2  (col x row)
    % theta = 2 x 1
    % X*theta = 97 x 1
    % X' = 2x97

    % theta = [ θ1 ]
    %         [ θ2 ]
    fprintf( 'size of X = %d %d', size(X));
    fprintf( 'size of theta = %d %d', size(theta));

    gradJ = transpose(X) * (X*theta-y);
    theta = theta - alpha * gradJ / m;

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);
    fprintf('\nWith theta = [%f,%f]\nCost computed = %f\n', theta(1,1), theta(2,1), J_history(iter));

end

end
