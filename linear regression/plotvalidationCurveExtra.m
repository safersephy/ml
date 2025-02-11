
%% =========== Part 8: Validation for Selecting Lambda =============
%  You will now implement validationCurve to test various values of
%  lambda on a validation set. You will then use this to select the
%  "best" lambda value.
%

[lambda_vec, error_train, error_val,error_test] = ...
    validationCurveExtra(X_poly, y, X_poly_val, yval, X_poly_test, ytest);

close all;
plot(lambda_vec, error_train, lambda_vec, error_val,lambda_vec, error_test);
legend('Train', 'Cross Validation', 'Test');
xlabel('lambda');
ylabel('Error');

fprintf('lambda\t\tTrain Error\tValidation Error\tTest Error\n');
for i = 1:length(lambda_vec)
	fprintf(' %f\t%f\t%f\t%f\n', ...
            lambda_vec(i), error_train(i), error_val(i),error_test(i));
end

fprintf('Program paused. Press enter to continue.\n');
pause;
