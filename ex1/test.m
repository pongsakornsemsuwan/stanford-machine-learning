clear ; close all; clc

X = rand(3,4);

fprintf('Running warmUpExercise ... \n');
fprintf('%i %i %i %i\n', X);


X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

for i = 1:size(X, 2)
    mu(i) = mean(X(:,i));
    sigma(i) = std(X(:,i));
    X_norm(:,i) = (X(:,i) - mu(i)) / sigma(i);
end

fprintf('\n');
fprintf('%i %i %i %i\n', X_norm);

pause;
