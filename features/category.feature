Feature: Category
  As a blog administrator
  I want to check all categories and add a new category.
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"
    
  Scenario: I can reach to the Categories page
    Then I should see "Categories"
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"
    And I should see "General"
      
  Scenario: I can add a new catergory
    When I fill in "Name" with "SciFi" 
    And I fill in "Keywords" with "sci"
    And I fill in "Permalink" with "NA"
    And I fill in "Description" with "good"  
    Then I press "Save"
    Then I should see "SciFi"
    And I should see "sci"
    And I should see "NA"
    And I should see "good"
