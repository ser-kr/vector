import UIKit

class Vector3D {
    var x, y, z: Double
    init() {(x,y,z) = (0, 0, 0)}
    init(x: Double, y: Double, z: Double) {(self.x, self.y, self.z) = (x, y, z)}
    
    func length() -> Double {
        return sqrt(x * x + y * y + z * z)
    }
    
        
}
let vectorOne = Vector3D(x: 2, y: 2, z: 2)

vectorOne.length()
