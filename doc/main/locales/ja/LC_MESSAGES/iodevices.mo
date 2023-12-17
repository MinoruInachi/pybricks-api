Þ                          7     W   E          ¯  7   ¼     ô  "   ý  j            \   ¬  
   	  &        ;     M     i  ?        É  "   Ñ  .   ô  4   #  D   X          ½  P   Õ  X   &  D        Ä     á  J   ÷    B  a  O  A   ±     ó     t       ;   £     ß  6   õ  ¥   ,  *   Ò     ý     }  0        ¾  /   Ö  0     Q   7  	     9     A   Í  0     d   @  3   ¥  '   Ù  Z        \  ]   á  '   ?     g  i   z  ¦  ä   :mod:`iodevices <pybricks.iodevices>` -- Custom devices Connects to a hub running official LEGO firmware using the `LEGO Wireless Protocol v3`_ Detecting devices Device mode. Dictionary with information, such as the device ``id``. Examples Gets information about the device. If a message has not been received since the last read, the method will block until a message is received. LEGO Wireless Protocol v3 device New Bluetooth name of the device. If no name is given, this method returns the current name. Parameters Port to which the device is connected. Powered Up Device Powered Up motor or sensor. Reads values from a given mode. Retrieves the most recent message received from the remote hub. Returns Sends a message to the remote hub. Sets or gets the Bluetooth name of the device. The `hub type identifier`_ of the hub to connect to. The name of the hub to connect to or ``None`` to connect to any hub. The raw binary message to send. The raw binary message. The time, in milliseconds, to wait for a connection before raising an exception. This is an experimental class. It has not been well tested and may be changed in future. This module has classes for generic and custom input/output devices. Values read from the sensor. Values to be written. Writes values to the sensor. Only selected sensors and modes support this. from pybricks.iodevices import PUPDevice
from pybricks.parameters import Port
from uerrno import ENODEV

# Dictionary of device identifiers along with their name.
device_names = {
    # pybricks.pupdevices.DCMotor
    1: "Wedo 2.0 Medium Motor",
    2: "Powered Up Train Motor",
    # pybricks.pupdevices.Light
    8: "Powered Up Light",
    # pybricks.pupdevices.Motor
    38: "BOOST Interactive Motor",
    46: "Technic Large Motor",
    47: "Technic Extra Large Motor",
    48: "SPIKE Medium Angular Motor",
    49: "SPIKE Large Angular Motor",
    65: "SPIKE Small Angular Motor",
    75: "Technic Medium Angular Motor",
    76: "Technic Large Angular Motor",
    # pybricks.pupdevices.TiltSensor
    34: "Wedo 2.0 Tilt Sensor",
    # pybricks.pupdevices.InfraredSensor
    35: "Wedo 2.0 Infrared Motion Sensor",
    # pybricks.pupdevices.ColorDistanceSensor
    37: "BOOST Color Distance Sensor",
    # pybricks.pupdevices.ColorSensor
    61: "SPIKE Color Sensor",
    # pybricks.pupdevices.UltrasonicSensor
    62: "SPIKE Ultrasonic Sensor",
    # pybricks.pupdevices.ForceSensor
    63: "SPIKE Force Sensor",
    # pybricks.pupdevices.ColorLightMatrix
    64: "SPIKE 3x3 Color Light Matrix",
}

# Make a list of known ports.
ports = [Port.A, Port.B]

# On hubs that support it, add more ports.
try:
    ports.append(Port.C)
    ports.append(Port.D)
except AttributeError:
    pass

# On hubs that support it, add more ports.
try:
    ports.append(Port.E)
    ports.append(Port.F)
except AttributeError:
    pass

# Go through all available ports.
for port in ports:

    # Try to get the device, if it is attached.
    try:
        device = PUPDevice(port)
    except OSError as ex:
        if ex.args[0] == ENODEV:
            # No device found on this port.
            print(port, ": ---")
            continue
        else:
            raise

    # Get the device id
    id = device.info()["id"]

    # Look up the name.
    try:
        print(port, ":", device_names[id])
    except KeyError:
        print(port, ":", "Unknown device with ID", id)
 Project-Id-Version: pybricks v3.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-03-05 13:22+0900
PO-Revision-Date: 2023-03-05 13:29+0900
Last-Translator: Minoru INACHI
Language: ja
Language-Team: ja
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 :mod:`iodevices <pybricks.iodevices>` -- ã«ã¹ã¿ã ããã¤ã¹ `LEGO Wireless Protocol v3`_ ã«ãããã¬ã´ç¤¾å¬å¼ãã¡ã¼ã ã¦ã§ã¢ãæ­è¼ããããã¨ã®æ¥ç¶ãå¯è½ã§ãã ããã¤ã¹ã®æ¤åº ããã¤ã¹ã¢ã¼ãã ããã¤ã¹ ``id`` ã®ãããªæå ±ãæã£ãè¾æ¸ã ãµã³ãã«ã³ã¼ã ããã¤ã¹ã«ã¤ãã¦ã®æå ±ãåå¾ãã¾ãã æå¾ã®èª­ã¿åãä»¥éã«ã¡ãã»ã¼ã¸ãåä¿¡ãã¦ããªãå ´åããã®ã¡ã½ããã¯ã¡ãã»ã¼ã¸ãåä¿¡ãããã¾ã§ãã­ãã¯ããã¾ãã LEGO ç¡ç·ãã­ãã³ã« v3 ããã¤ã¹ ããã¤ã¹ã®æ°ãã Bluetooth åãname ãæå®ããªãå ´åããã®ã¡ã½ããã¯ç¾å¨ã®ååãè¿ãã¾ãã ãã¿ã¡ã¼ã¿ ããã¤ã¹ãæ¥ç¶ããã¦ãããã¼ãã Powered Up ããã¤ã¹ Powered Up ã¢ã¼ã¿ã¼ã¾ãã¯ã»ã³ãµã¼ã æå®ã®ã¢ã¼ãã§å¤ãèª­ã¿åãã¾ãã ãªã¢ã¼ãããããåä¿¡ããææ°ã®ã¡ãã»ã¼ã¸ãåå¾ãã¾ãã æ»ãå¤ ãªã¢ã¼ãããã«ã¡ãã»ã¼ã¸ãéä¿¡ãã¾ãã ããã¤ã¹ã® Bluetooth åãè¨­å®ã¾ãã¯åå¾ãã¾ãã æ¥ç¶ããããã® `hub type identifier`_ ã æ¥ç¶ããããã®ååãä»»æã®ããã«æ¥ç¶ããå ´åã¯ ``None`` ãæå®ãã¾ãã éä¿¡ããçã®ãã¤ããªã¼ã¡ãã»ã¼ã¸ã çã®ãã¤ããªã¼ã¡ãã»ã¼ã¸ã ä¾å¤ãçºçãããã¾ã§ã®æ¥ç¶å¾ã¡æéãããªç§åä½ã§æå®ãã¾ãã ããã¯è©¦é¨çãªã¯ã©ã¹ã§ããååã«æ¤è¨¼ããã¦ããªããããå°æ¥çã«å¤æ´ããå¯è½æ§ãããã¾ãã ãã®ã¢ã¸ã¥ã¼ã«ã¯æ±ç¨ããã³ã«ã¹ã¿ã å¥åºåããã¤ã¹ç¨ã¯ã©ã¹ã§ãã ã»ã³ãµã¼ããèª­ã¿åã£ãå¤ã æ¸ãåºãå¤ã ã»ã³ãµã¼ã«å¤ãæ¸ãåºãã¾ããä¸é¨ã®ã»ã³ãµã¼ã¨ã¢ã¼ãã®ã¿å¯¾å¿ãã¦ãã¾ãã from pybricks.iodevices import PUPDevice
from pybricks.parameters import Port
from uerrno import ENODEV

# ããã¤ã¹ã®è­å¥å­ã¨ãã®åç§°ãä¸¦ã¹ãè¾æ¸ã
device_names = {
    # pybricks.pupdevices.DCMotor
    1: "Wedo 2.0 Medium Motor",
    2: "Powered Up Train Motor",
    # pybricks.pupdevices.Light
    8: "Powered Up Light",
    # pybricks.pupdevices.Motor
    38: "BOOST Interactive Motor",
    46: "Technic Large Motor",
    47: "Technic Extra Large Motor",
    48: "SPIKE Medium Angular Motor",
    49: "SPIKE Large Angular Motor",
    65: "SPIKE Small Angular Motor",
    75: "Technic Medium Angular Motor",
    76: "Technic Large Angular Motor",
    # pybricks.pupdevices.TiltSensor
    34: "Wedo 2.0 Tilt Sensor",
    # pybricks.pupdevices.InfraredSensor
    35: "Wedo 2.0 Infrared Motion Sensor",
    # pybricks.pupdevices.ColorDistanceSensor
    37: "BOOST Color Distance Sensor",
    # pybricks.pupdevices.ColorSensor
    61: "SPIKE Color Sensor",
    # pybricks.pupdevices.UltrasonicSensor
    62: "SPIKE Ultrasonic Sensor",
    # pybricks.pupdevices.ForceSensor
    63: "SPIKE Force Sensor",
    # pybricks.pupdevices.ColorLightMatrix
    64: "SPIKE 3x3 Color Light Matrix",
}

# æ¢ç¥ã®ãã¼ãã®ãªã¹ããä½æã
ports = [Port.A, Port.B]

# å¯¾å¿ããããã§ã¯ãããã«ãã¼ããè¿½å ã
try:
    ports.append(Port.C)
    ports.append(Port.D)
except AttributeError:
    pass

# å¯¾å¿ããããã§ã¯ãããã«ãã¼ããè¿½å ã
try:
    ports.append(Port.E)
    ports.append(Port.F)
except AttributeError:
    pass

# å©ç¨ã§ãããã¼ããå·¡åã
for port in ports:

    # ããã¤ã¹ãç¹ãããã¦ããå ´åã¯ããã®ã®åå¾ãè©¦ã¿ã¾ãã
    try:
        device = PUPDevice(port)
    except OSError as ex:
        if ex.args[0] == ENODEV:
            # ãã®ãã¼ãã«ã¯ããã¤ã¹ãè¦ã¤ãããªãã£ãã
            print(port, ": ---")
            continue
        else:
            raise

    # ããã¤ã¹ id ãåå¾
    id = device.info()["id"]

    # ããã¤ã¹åãèª¿ã¹ãã
    try:
        print(port, ":", device_names[id])
    except KeyError:
        print(port, ":", "Unknown device with ID", id)
 