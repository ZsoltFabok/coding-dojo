Feature: File lottery kata
  In order to have a command line shuffle application which works with xargs + mplayer
     As an average joe
    I want to have a functionality which can return random files from a folder and print them out

  @cleanup
  Scenario: Reading file names from given directory
    Given I have a folder with five different files no directories
     When I execute my application
     Then I see the content of the folder in random order

  @cleanup
  Scenario: Shuffle is working
    Given I have a folder with five different files no directories
     When I execute my application 1000 times
     Then I see that the order of the result of the executions are different at least once

  @cleanup
  Scenario: If a new file shows up after an execution it will be a part of the output
    Given I have a folder with five different files no directories
     And I execute my application
     When I add a file to the folder
     And I execute my application
     Then It will appear in the result
  
  @cleanup
  Scenario: Running the bin should work fine
    Given I have a folder with five different files no directories
     When I execute my application bin
     Then It should return to shell with 0
