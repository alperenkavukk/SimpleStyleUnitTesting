//
//  swiftTestingUITests.swift
//  swiftTestingUITests
//
//  Created by Alperen Kavuk on 15.04.2023.
//

import XCTest

final class swiftTestingUITests: XCTestCase {

  

    func testToDoItem() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        
       
        let addButton = app.navigationBars["swiftTesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField =  elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"my ıtems").element
            
        addButton.tap()
        textField.tap()
        textField.typeText("my ıtems")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
    }
    
    func testDeleteItem() throws {
        let app = XCUIApplication()
        app.launch()
        let addButton = app.navigationBars["swiftTesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField =  elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"my ıtems").element
            
        let tablesQuery = app.tables
        let deleteButton = tablesQuery.buttons["Delete"]
        
        addButton.tap()
        textField.tap()
        textField.typeText("my ıtems")
        okButton.tap()
        
        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists)
                        
        
    }

   
}
