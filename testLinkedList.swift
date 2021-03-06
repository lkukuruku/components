//
//  testLinkedList.swift
//  componentsTests
//
//  Created by Elka Belaya on 05.09.2020.
//  Copyright © 2020 com.elkabelaya. All rights reserved.
//

import XCTest

class testLinkedList: XCTestCase {
    
    

    func testAddToTail() throws {
        var list:LinkedList<String> = LinkedList()
        let testValuesArray = ["1", "2", "3", "4", "5"]
        var testIndex:Int;
        
        for item in 0...testValuesArray.count - 1 {
            list.addToTail(value: testValuesArray[item])
            testIndex = -1
            for  value in list{
                testIndex+=1
                assert(value == testValuesArray[testIndex], "must contain value" + testValuesArray[testIndex] + " on position " + String(testIndex))
                
            }
            
            assert( list.count == item+1, "the num of elements in list must be " + String(item+1))
        }
        
    }
    
    func testAddToHead() throws {
        var list:LinkedList<String> = LinkedList()
        let testValuesArray = ["1", "2", "3", "4", "5"]
        var testIndex:Int;
        
        for item in 0...testValuesArray.count - 1 {
            list.addToHead(value: testValuesArray[item])
            testIndex = item + 1
            for  value in list{
                testIndex-=1
                assert(value == testValuesArray[testIndex], "must contain value" + testValuesArray[testIndex] + " on position " + String(testIndex))
                
            }
            
            assert( list.count == item+1, "the num of elements in list must be " + String(item+1))
        }
        
    }

   

}
