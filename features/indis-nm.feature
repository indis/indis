Feature: indis-nm
  
  As a toolset user
  I want to see the list of symbols, defined in a binary
  
  Scenario Outline: List all defined symbols in a binary
    Given a file named "<file>.o" with contents of fixture "<file>.o"
    When I successfully run `indis-nm <file>.o`
    Then the output should be the same as the contents of "nm-<file>.txt"
  
  Scenarios: Symbols are correct
    | file                  |
    | app-arm-release       |
    | app-thumb-debug       |
    | app-thumb-release-arc |