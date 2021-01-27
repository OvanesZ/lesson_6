import UIKit




struct Queue<T> {
    private var array: [T] = []
    
    mutating func addToQueue(_ element: T) {
        self.array.append(element)
    }
    
    mutating func quitFromQueue() {
        self.array.removeFirst()
    }
    
    mutating func removeAll (where condition: (T) -> Int) {
        for (index, element) in array.enumerated().reversed() {
            if (condition (element) != 0) {
                array.remove(at: index)
            }
        }
    }
}



var queue = Queue<Int>()

queue.addToQueue(1)
queue.addToQueue(2)
queue.addToQueue(3)
queue.addToQueue(4)
queue.addToQueue(5)

//var queue = Queue<String>()
//
//queue.addToQueue("first")
//queue.addToQueue("second")
//queue.addToQueue("third")
//queue.addToQueue("fourth")
//queue.addToQueue("fifth")

print(queue)

queue.quitFromQueue()

print(queue)

queue.removeAll {$0}

print(queue)

