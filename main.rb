require 'java'

java_import 'java.awt.Dimension'
java_import 'java.awt.Rectangle'
java_import 'java.awt.Robot'
java_import 'java.awt.Toolkit'
java_import 'java.awt.event.InputEvent'
java_import 'java.awt.image.BufferedImage'
java_import 'javax.imageio.ImageIO'

sleep(3)
toolkit = Toolkit::getDefaultToolkit
screen_size = toolkit.getScreenSize
rect = Rectangle.new(screen_size)
robot = Robot.new
image = robot.createScreenCapture(rect)
f = java::io::File.new("img_#{Time.now}.png")
ImageIO::write(image, 'png', f)

