//
//  ArrayTests.swift
//  MovieQuizTests
//
//  Created by Владимир Горбачев on 09.12.2023.
//

import XCTest // Импортируем фреймворк
@testable import MovieQuiz // Импортируем приложение для тестирования

class ArrayTests: XCTestCase {
    func testGetValueInRange() throws { // Тест на успешное взятие элемента по индексу
        // Given
        let array = [1, 1, 2, 3, 5]
        
        // When
        let value = array[safe: 2]
               
        // Then
        XCTAssertNotNil(value)
        XCTAssertEqual(value, 2)
    }
    
    func testGetValueOutOfRange() throws {
        // Given
        let array = [1, 1, 2, 3, 5]
        
        // When
        let value = array[safe: 20]
        
        // Then
        XCTAssertNil(value)
    }
}
