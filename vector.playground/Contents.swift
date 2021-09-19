import UIKit

class Vector3D {
    var x, y, z: Double
    
    init() {(x,y,z) = (0, 0, 0)}
    
    init(x: Double, y: Double, z: Double) {(self.x, self.y, self.z) = (x, y, z)}
    
    func length() -> Double {
        return sqrt(x * x + y * y + z * z)
    }
    
    func scalar(other: Vector3D) -> Double {
        return (x * other.x + y * other.y + z * other.z)
    }
    
    func product(other: Vector3D) -> Vector3D {
        return Vector3D(x: other.y * z - other.z * y, y: other.z * x - other.x * z, z: other.x * y - other.y * x)
    }
    
    func angle(other: Vector3D) -> Double {
        return (scalar(other: other)) / (length() * other.length())
    }
    
    func sum(other: Vector3D) -> Vector3D {
        return Vector3D(x: x + other.x, y: y + other.y, z: z - other.z)
    }
    
    func difference(other: Vector3D) -> Vector3D {
        return Vector3D(x: x - other.x, y: y - other.y, z: z - other.z)
    }
    
    static func randomArray(n: Int, range: Range<Double> = 0..<100) -> [Vector3D] {
        return (1...n).map( { _ in Vector3D(x: Double.random(in: range), y: Double.random(in: range), z: Double.random(in: range))})
    }
}

let vectorOne = Vector3D(x: 7, y: 2, z: 4)
let vectorTwo = Vector3D(x: 3, y: 4, z: 5)

vectorOne.length()
vectorOne.scalar(other: vectorTwo)
vectorOne.product(other: vectorTwo)
vectorOne.angle(other: vectorTwo)
vectorOne.sum(other: vectorTwo)
vectorOne.difference(other: vectorTwo)
Vector3D.randomArray(n: 4)
Vector3D.randomArray(n: 5, range: 1.1..<2)
