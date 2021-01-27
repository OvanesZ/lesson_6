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
    subscript(safe index: Int) -> T? {
            return array.indices ~= index ? array[index] : nil
        }
}




var queue = Queue<Int>()




queue.addToQueue(1)
queue.addToQueue(2)
queue.addToQueue(3)
queue.addToQueue(4)
queue.addToQueue(5)

queue[safe: 0]
queue[safe: 8]


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
queue[safe: 0]

queue.removeAll {$0}

print(queue)

