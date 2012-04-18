Feature: indis-dis
  
  As a toolset user
  I want to see the dissambly of a symbol from binary
  
  Scenario Outline: Disassemble a symbol in binary
    Given a file named "<target_file>" with contents of fixture "<target_file>"
    When I successfully run `indis-dis <target_file> <symbol>`
    Then the output should be the same as the contents of "<verification_file>"
  
  Scenarios: Disassembly is correct
    | target_file       | verification_file             | symbol |
    | app-arm-release.o | dis-start-app-arm-release.txt | start  |
    | app-arm-release.o | dis-main-app-arm-release.txt  | _main  |
