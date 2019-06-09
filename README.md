# SwiftUI-MVP

This is Playground project to apply SwiftUI in a real case scenario.

This playground implements Model View Presenter architecture with a view implemented in SwiftUI. 

The goal is to get simple views which in contrast to Apple example are only responsabile of the view logic, extracting the business and the navigation logic out of the view layer.

Pending issues:
* @State properties can not be read from the presenter. So there is no way to check the current view status (the current username and password introduced by the user in the example project). To avoid this issue, both username and password values were included in the view model.
* Because the SwiftUI views actually need a UIViewController to be hosted, it is a mess to handle the navigation because you need both a reference to the ViewController and the SwiftUI view to manage the navigation and the view model updates. Naive soluction was applied keeping a reference to the currently presented ViewController in the wireframe.
