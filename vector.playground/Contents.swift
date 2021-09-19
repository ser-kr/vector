import UIKit

class Vector3D {
    var x, y, z: Double
    init() {(x,y,z) = (0, 0, 0)}
    init(x: Double, y: Double, z: Double) {(self.x, self.y, self.z) = (x, y, z)}
    
    func length() -> Double {
        return sqrt(x * x + y * y + z * z)
    }
    func scalar (other: Vector3D) -> Double {
        return (x * other.x + y * other.y + z * other.z)
    }
    func product (other: Vector3D) -> Vector3D {
        return Vector3D(x: other.y * z - other.z * y, y: other.z * x - other.x * z, z: other.x * y - other.y * x)
    }
}

let vectorOne = Vector3D(x: 7, y: 2, z: 4)
let vectorTwo = Vector3D(x: 3, y: 4, z: 5)

vectorOne.length()
vectorOne.scalar(other: vectorTwo)
vectorOne.product(other: vectorTwo)

