Feature: indis-seg
  
  As a toolset user
  I want to see the list of segments and sections in a binary
  
  Scenario: List all defined segments in a binary
    Given a file named "app-arm-release.o" with contents of fixture "app-arm-release.o"
    When I successfully run `indis-seg segment app-arm-release.o`
    Then the output should be the same as the contents of "seg-segment-app-arm-release.txt"

  Scenario: List all defined sections in a binary
    Given a file named "app-arm-release.o" with contents of fixture "app-arm-release.o"
    When I successfully run `indis-seg section app-arm-release.o`
    Then the output should be the same as the contents of "seg-section-app-arm-release.txt"
