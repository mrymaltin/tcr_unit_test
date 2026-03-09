function assertVectorsClose(tc, actual, expected, absTol, relTol, context)
    % assertVectorsClose - Custom assertion for comparing two vectors within tolerance.
    %   tc: Test case object
    %   actual: Actual vector
    %   expected: Expected vector
    %   absTol: Absolute tolerance
    %   relTol: Relative tolerance
    %   context: Additional context information

    % Calculate the absolute and relative differences
    absDiff = abs(actual - expected);
    relDiff = absDiff ./ abs(expected);

    % Check if within absolute or relative tolerance
    if any(absDiff > absTol) && any(relDiff > relTol)
        error('%s: Vectors are not close. Actual: %s, Expected: %s', context, mat2str(actual), mat2str(expected));
    else
        tc.verifyTrue(all(absDiff <= absTol | relDiff <= relTol), sprintf('Vectors are close within absTol: %g and relTol: %g', absTol, relTol));
    end
end