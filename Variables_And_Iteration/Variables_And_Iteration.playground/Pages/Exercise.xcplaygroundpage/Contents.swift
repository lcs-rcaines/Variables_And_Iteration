//: [Previous](@previous) / [Next](@next)
//: # Exercise
//: Say that we want to create this mountain scene on a 300x300 canvas:
//:
//: ![mountains](mountains.png "Mountains")
//:
//: At first glance this may seem like a complicated image.
//:
//: However, if we break down, or *decompose* the problem (get your whiteboard out!) it's not so bad.
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below
// Create canvas

let canvas = Canvas(width: 500, height: 500)

//canvas.drawShapesWithFill = false
//
//for x in stride(from: 50, through: 450, by: 100){
//
//    for y in stride(from: 450, through: 50, by: -100){
//
//        for size in stride(from: 100, through: 20, by: -20){
//
//            canvas.drawRectangle(centreX: x, centreY: y, width: size, height: size)
//
//        }
//
//    }
//
//}

//canvas.drawShapes with fill

for x in stride(from: 0, through: 400, by: 100){
    for y in stride(from: 0, through: 400, by: 200){
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 50, height: 100)
        for x in stride(from: 50, through: 500, by: 100){
            for y in stride(from: 100, through: 500, by: 200){
                canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 50, height: 100)
            }
        }
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
