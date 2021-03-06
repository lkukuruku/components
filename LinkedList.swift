//
//  LinkedList.swift
//  components
//
//  Created by Elka Belaya on 05.09.2020.
//  Copyright © 2020 com.elkabelaya. All rights reserved.
//
public struct LinkedList<T> {
    
   private var tail: LinkedListElement<T>?
   private var head: LinkedListElement<T>?
   public private(set) lazy var count: Int = 0
       
    init(){
        
    }
    
    mutating func addToTail(value: T){
        
        let newElement = LinkedListElement(value: value)
        
        if (tail == nil){
            tail = newElement
            head = tail
        } else {
            tail!.next = newElement
            tail = newElement
        }
        count += 1
       
    }
    
    mutating func addToHead(value: T){
        if (tail == nil){
            addToTail(value: value)
        } else {
            let newElement = LinkedListElement(value: value)
            newElement.next = head
            head = newElement
            count += 1
        }
    
    }
    
    
}

class LinkedListElement<T>{
    var next:LinkedListElement<T>?
    var value:T
    init(value:T){
        self.value = value
    }
    
}

extension LinkedList: Sequence {
    public func makeIterator() -> LinkedListIterator<T> {
        return LinkedListIterator(current: head)
    }
    
}

public struct LinkedListIterator<T>: IteratorProtocol {
     var current: LinkedListElement<T>?
    
    mutating public func next() -> T? {
        var value:T? = nil;
        if (current != nil){
            value = current!.value;
            current = current!.next;
        }
        return value
        
    }
}
