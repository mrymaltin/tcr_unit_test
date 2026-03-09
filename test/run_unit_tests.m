function results = run_unit_tests()
%RUN_UNIT_TESTS Run all matlab.unittest tests under /test
%
% Usage:
%   cd test
%   results = run_unit_tests();

    import matlab.unittest.TestSuite
    import matlab.unittest.TestRunner

    here = fileparts(mfilename('fullpath'));
    addpath(genpath(here));
    addpath(genpath(fullfile(here, "..")));

    suite  = TestSuite.fromFolder(here, 'IncludingSubfolders', true);
    runner = TestRunner.withTextOutput;
    results = runner.run(suite);
end
