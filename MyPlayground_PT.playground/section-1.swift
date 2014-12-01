

import SceneKit
import XCPlayground

var view = SCNView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))



var scene = SCNScene()
view.scene = scene
view.backgroundColor = NSColor.blackColor()
view.autoenablesDefaultLighting = true

for var i=0; i<50; i++ {
var tube = SCNTorus(ringRadius: 10, pipeRadius: 0.2)
var tubeNode = SCNNode(geometry: tube)
scene.rootNode.addChildNode(tubeNode)

    tube.firstMaterial?.diffuse.contents = NSColor(calibratedHue: CGFloat(arc4random_uniform(200))/200, saturation: 0.5, brightness: 1, alpha: 1)
    
var spin = CABasicAnimation(keyPath: "rotation")
spin.toValue = NSValue(SCNVector4:SCNVector4(x: CGFloat(random()), y: CGFloat(random()), z: CGFloat(random()), w: CGFloat(M_PI)*2.0))
spin.duration = NSTimeInterval(arc4random_uniform(20)+5)
    
tubeNode.addAnimation(spin, forKey: "spin")
}
XCPShowView("view", view)



