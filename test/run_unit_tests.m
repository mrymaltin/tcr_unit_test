% Code for running all unit tests

function run_unit_tests()
    % Add paths to necessary directories
    addpath('helpers');
    addpath('fixtures');
    
    % Call individual test functions
    assert_vectors_close();
    TestHardcodedDelayWeightsMatchGenerated();
    TestFixturesSanity();
end