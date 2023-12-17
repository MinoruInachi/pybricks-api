Þ    ;      ô              Ì     Í     ß     ð     ý            C   +  <   o  C   ¬     ð               %     ,      H     i  3   o  	   £  ñ   ­          '     ,  #   1  Æ   U       =   4     r         £	     »	     Ò	  v   â	  
   Y
  '   d
     
     
  8   ¡
     Ú
     ë
  Î   ÷
  /   Æ     ö  U   û     Q  C  V  S     P   î  B   ?  P     ;   Ó  M     !   ]       ó     	          Ã  ¡  <  e  a  ¢  #        (     <      P     q       C   ¥  K   é  T   5  !        ¬  	   °  	   º  <   Ä  '        )  2   -     `    g  ±   p  	   "     ,  9   9    s       H     -   á  )    !   9      [      t   ¿         H!  9   X!  	   !     !  6   °!     ç!  	   ú!    "  I   #     [#     b#     è#  ¡  ï#  Q   %  W   ã%  V   ;&  ~   &  E   '  `   W'  $   ¸'     Ý'    ð'     )     )  F  )    f-   **Essential Hub** **Inventor Hub** **Move Hub** **Prime Hub** **Technic Hub** **Tilt Sensor** :mod:`parameters <pybricks.parameters>` -- Parameters and constants A positive speed value should make the motor move clockwise. A positive speed value should make the motor move counterclockwise. Action after the motor stops. Axis Brightness value. Button Buttons on a hub or remote. Changed which side is the front. Color Constant parameters/arguments for the Pybricks API. Direction Do not decelerate when approaching the target position. This can be used to concatenate multiple motor or drive base maneuvers without stopping. If no further commands are given, the motor will proceed to run indefinitely at the given speed. Each of the following attributes are matrices. This means you can scale icons to adjust the brightness or add icons to make composites. Hue. Icon Icons to display on a light matrix. In general, clockwise is defined by **looking at the motor shaft, just like looking at a clock**. Some motors have two shafts. If in doubt, refer to the diagram in the ``Motor`` class documentation. Input and output ports: Keep controlling the motor to hold it at the commanded angle. Let the motor move freely. Let the motor move freely. For the next relative angle maneuver, take the last target angle (instead of the current angle) as the new starting point. This reduces cumulative errors. This will apply only if the current angle is less than twice the configured position tolerance. Light or surface color. Making your own colors Negative speed: On Move Hub, doing math with these vectors is not supported. The axes can still be used to set up the hub orientation. Parameters Passively resist small external forces. Port Positive speed: Rotational direction for positive speed or angle values. Saturated colors Saturation. Screens or light matrices have only four sides. For those, ``TOP`` is treated the same as ``FRONT``, and ``BOTTOM`` is treated the same as ``BACK``. The diagrams below define the sides for relevant devices. See the :ref:`make_icons` section for examples. Side Side of a hub or a sensor. These devices are mostly rectangular boxes with six sides: Stop The following table shows how each of the basic stop types add an extra level of resistance to motion. In these examples, ``m`` is a :class:`Motor <pybricks.pupdevices.Motor>` and and ``d`` is a :class:`DriveBase <pybricks.robotics.DriveBase>`. The examples also show how running at zero speed compares to these stop types. These colors have maximum saturation and brightness value. They differ only in hue. These colors have zero hue and saturation. They differ only in brightness value. This example shows more advanced use cases of the ``Color`` class. This example shows the basics of color properties, and how to define new colors. This is total darkness, with no reflection or light at all. This represents dark objects that still reflect a very small amount of light. Unit axes of a coordinate system. Unsaturated colors When detecting these colors using sensors, their values depend a lot on the distance to the object. If the distance between the sensor and the object is not constant in your robot, it is better to use only one of these colors in your programs. clockwise counterclockwise from pybricks.parameters import Color

# Two colors are equal if their h, s, and v attributes are equal.
if Color.BLUE == Color(240, 100, 100):
    print("Yes, these colors are the same.")

# You can scale colors to change their brightness value.
red_dark = Color.RED * 0.5

# You can shift colors to change their hue.
red_shifted = Color.RED >> 30

# Colors are immutable, so you can't change h, s, or v of an existing object.
try:
    Color.GREEN.h = 125
except AttributeError:
    print("Sorry, can't change the hue of an existing color object!")

# But you can override builtin colors by defining a whole new color.
Color.GREEN = Color(h=125)

# You can access and store colors as class attributes, or as a dictionary.
print(Color.BLUE)
print(Color["BLUE"])
print(Color["BLUE"] is Color.BLUE)
print(Color)
print([c for c in Color])

# This allows you to update existing colors in a loop.
for name in ("BLUE", "RED", "GREEN"):
    Color[name] = Color(1, 2, 3)
 from pybricks.parameters import Color

# You can print colors. Colors may be obtained from the Color class, or
# from sensors that return color measurements.
print(Color.RED)

# You can read hue, saturation, and value properties.
print(Color.RED.h, Color.RED.s, Color.RED.v)

# You can make your own colors. Saturation and value are 100 by default.
my_green = Color(h=125)
my_dark_green = Color(h=125, s=80, v=30)

# When you print custom colors, you see exactly how they were defined.
print(my_dark_green)

# You can also add colors to the builtin colors.
Color.MY_DARK_BLUE = Color(h=235, s=80, v=30)

# When you add them like this, printing them only shows its name. But you can
# still read h, s, v by reading its attributes.
print(Color.MY_DARK_BLUE)
print(Color.MY_DARK_BLUE.h, Color.MY_DARK_BLUE.s, Color.MY_DARK_BLUE.v)
 Project-Id-Version: pybricks v3.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-12-17 09:36+0900
PO-Revision-Date: 2023-04-28 10:27+0900
Last-Translator: Minoru INACHI
Language: ja
Language-Team: ja
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 **ãã©ã¤ã  ã¹ã¢ã¼ã«ãã** **Inventor ãã** **ã ã¼ããã** **ãã©ã¤ã  ã©ã¼ã¸ãã** **ãã¯ããã¯ãã** **ãã«ãã»ã³ãµã¼** :mod:`parameters <pybricks.parameters>` -- ãã©ã¡ã¼ã¿ã¨å®æ° éåº¦ãæ­£ã®å¤ã®å ´åãã¢ã¼ã¿ã¼ã¯æè¨åãã«åãã¾ãã éåº¦ãæ­£ã®å¤ã®å ´åãã¢ã¼ã¿ã¼ãåæè¨åãã«åä½ããã¾ãã ã¢ã¼ã¿ã¼åæ­¢å¾ã®åä½ã è»¸ æåº¦ã ãã¿ã³ ããã¾ãã¯ãªã¢ã¼ãã³ã³ãã­ã¼ã«ä¸ã®ãã¿ã³ ã©ã¡ãããã­ã³ãããå¤æ´ã è² Pybricks API ç¨ã®å®æ°ãã©ã¡ã¼ã¿/å¼æ°ã æ¹å ç®æ¨ä½ç½®ã«è¿ã¥ãã¦ãæ¸éãã¾ãããè¤æ°ã®ã¢ã¼ã¿ã¼ããã©ã¤ããã¼ã¹ã®æä½ãåæ­¢ãããã«é£ç¶ãã¦ä½¿ãã¾ããããä»¥ä¸æä»¤ããªãå ´åã¯ãæå®ãããéåº¦ã§ç¡éã«ã¢ã¼ã¿ã¼ãåããç¶ãã¾ãã ä»¥ä¸ã®åå±æ§ã¯ãããªãã¯ã¹ã§ããã¤ã¾ããã¢ã¤ã³ã³ãã¹ã±ã¼ãªã³ã°ãã¦æãããèª¿æ´ããããã¢ã¤ã³ã³ãè¿½å ãã¦åæã§ãã¾ãã è²ç¸ã ã¢ã¤ã³ã³ ã©ã¤ããããªãã¯ã¹ã«è¡¨ç¤ºããã¢ã¤ã³ã³ã ä¸è¬çã«æè¨åãã¯ãæè¨ãè¦ãããã«ã¢ã¼ã¿ã¼ã®è»¸ãè¦ã¦å®ç¾©ãã¾ããã¢ã¼ã¿ã¼ã«ã¯ï¼ã¤ã®ã·ã£ããããããã®ãããã¾ããçåãããã° ``Motor`` ã¯ã©ã¹ã®ãã­ã¥ã¡ã³ãã«ããå³ãåç§ãã¦ãã ããã å¥åºåãã¼ã: ã¢ã¼ã¿ãå¶å¾¡ãç¶ããæä»¤ãããè§åº¦ã«ä¿æãã¾ãã ã¢ã¼ã¿ãæ°æ§ã§åãã¾ã¾ã«ããã ã¢ã¼ã¿ã¼ãæ°æ§ã§åãã¾ã¾ã«ãããæ¬¡ã®ç¸å¯¾è§åº¦æä½ã§ã¯(ç¾å¨ã®è§åº¦ã§ã¯ãªã)ãååã®ç®æ¨è§åº¦ãæ°ããªåºçºç¹ã¨ãã¾ããç´¯ç©èª¤å·®ãå°ãªããªãã¾ããç¾å¨ã®è§åº¦ãè¨­å®ããä½ç½®å¬å·®ã®2åä»¥ä¸ã®å ´åã®ã¿é©ç¨ããã¾ãã ã©ã¤ãã¾ãã¯è¡¨é¢ã®è²ã ç¬èªè²ã®ä½ææ¹æ³ è² ã®ã¹ãã¼ã: ã ã¼ãããã§ã¯ããããã® vector ãä½¿ã£ãè¨ç®ã¯ãµãã¼ãããã¦ãã¾ãããããã§ããããã®åããè¨­å®ããããã«è»¸ãä½¿ããã¨ã¯ã§ãã¾ãã ãã©ã¡ã¼ã¿ å°ããªå¤åã«å¯¾ãã¦ååçã«æµæãã¾ãã ãã¼ã æ­£ã®ã¹ãã¼ã: éåº¦ãè§åº¦ã®å¤ãæ­£ã®å ´åã®åè»¢æ¹åã å½©åº¦ã®é«ãè² å½©åº¦ã ã¹ã¯ãªã¼ã³ãã©ã¤ããããªã¯ã¹ã¯4é¢ãããªãããããã®å ´åã ``TOP`` ã¯ ``FRONT`` ã¨åãæ±ãã«ãªãã ``BOTTOM`` ã¯ ``BACK`` ã¨åãæ±ãã«ãªãã¾ããä¸å³ã¯ãé¢é£ããããã¤ã¹ã®å´é¢ãå®ç¾©ãããã®ã§ãã ä¾ã«ã¤ãã¦ã¯ :ref:`make_icons` ã®ç« ãåç§ãã¦ãã ããã å´é¢ ãããã»ã³ãµã¼ã®å´é¢ããããã®ããã¤ã¹ã¯ãã»ã¨ãã©ã6ã¤ã®å´é¢ãæã¤ç´æ¹ä½ã®ããã¯ã¹ã§ãã åæ­¢ æ¬¡ã®è¡¨ã¯ãåºæ¬çãªåæ­¢ã¿ã¤ãã®ããããããåãã«å¯¾ãã¦ã©ã®ããã«è¿½å ã®æµæåãå ããããç¤ºãã¦ãã¾ãããããã®ä¾ã§ã ``m`` ã¯ :class:`Motor <pybricks.pupdevices.Motor>` ã ``d`` ã¯ :class:`DriveBase <pybricks.robotics.DriveBase>` ãã¾ããã¼ã­éåº¦ã§ã®èµ°è¡ããããã®åæ­¢ã¿ã¤ãã¨ã©ã®ããã«æ¯è¼ãããããç¤ºãã¦ãã¾ãã å½©åº¦ã¨æåº¦ã®å¤ãæå¤§ã®ã«ã©ã¼ã§ããè²ç¸ã®éãã ãã§ãã ãããã®è²ã¯ãè²ç¸ã¨å½©åº¦ãã¼ã­ã§ããæåº¦ã®ã¿ãç°ãªãã¾ãã ãã®ä¾ã§ã¯ ``Color`` ã¯ã©ã¹ã®ããé«åº¦ãªä½¿ç¨ä¾ãç¤ºãã¦ãã¾ãã ãã®ä¾ã§ã¯ãã«ã©ã¼ãã­ããã£ã®åºæ¬çãªä½¿ãæ¹ã¨ãæ°ããã«ã©ã¼ã®å®ç¾©æ¹æ³ãç´¹ä»ãã¾ãã ããã¯ãåå°ãåãã¾ã£ãããªããçã£æéã§ãã ããã¯ãã¾ã ããããããªåãåå°ãã¦ããæãç©ä½ãè¡¨ãã¦ãã¾ãã åº§æ¨ç³»ãæ§æããåä½è»¸ã å½©åº¦ã®ä½ãè² ãããã®è²ãã»ã³ãµã¼ã§æ¤åºããå ´åããã®å¤ã¯å¯¾è±¡ç©ã¾ã§ã®è·é¢ã«å¤§ããä¾å­ãã¾ããã»ã³ãµã¼ã¨å¯¾è±¡ç©ã®è·é¢ãä¸å®ã§ãªãã­ãããã®å ´åããããã®è²ã®ãã¡ã®ï¼è²ã®ã¿ãä½¿ã£ãæ¹ãããã§ãããã æè¨åã åæè¨åã from pybricks.parameters import Color

# 2ã¤ã®ã«ã©ã¼ã¯ hãsãv å±æ§ãç­ããå ´åãç­ããã¨è¨ããã
if Color.BLUE == Color(240, 100, 100):
    print("Yes, these colors are the same.")

# ã«ã©ã¼ãã¹ã±ã¼ãªã³ã°ãã¦æåº¦ãå¤ããããã
red_dark = Color.RED * 0.5

# ã«ã©ã¼ãã·ãããã¦è²ç¸ãå¤æ´ã§ããã
red_shifted = Color.RED >> 30

# ã«ã©ã¼ã¯ä¸å¤ãªã®ã§ãæ¢å­ã®ãªãã¸ã§ã¯ãã® hãsãv ã¯å¤æ´ã§ããªãã
try:
    Color.GREEN.h = 125
except AttributeError:
    print("Sorry, can't change the hue of an existing color object!")

# ããããå¨ãæ°ããã«ã©ã¼ãå®ç¾©ãããã¨ã§ãçµè¾¼ã¿ã«ã©ã¼ãä¸æ¸ãã§ããã
Color.GREEN = Color(h=125)

# ã¯ã©ã¹ã®å±æ§ã¾ãã¯è¾æ¸ã¨ãã¦ã«ã©ã¼ã«ã¢ã¯ã»ã¹ãä¿å­ã§ããã
print(Color.BLUE)
print(Color["BLUE"])
print(Color["BLUE"] is Color.BLUE)
print(Color)
print([c for c in Color])

# ããã«ãããæ¢å­ã®ã«ã©ã¼ãã«ã¼ãã§æ´æ°ã§ããã
for name in ("BLUE", "RED", "GREEN"):
    Color[name] = Color(1, 2, 3)
 from pybricks.parameters import Color

# ã«ã©ã¼ã¯ããªã³ãã§ãããã«ã©ã¼ã¯ Color ã¯ã©ã¹ããåå¾ãããã¨ãã# è²ã®æ¸¬å®å¤ãè¿ãã»ã³ãµã¼ããåå¾ãããã¨ãã§ããã
print(Color.RED)

# è²ç¸ãå½©åº¦ãæåº¦ã®ãã­ããã£ãèª­ã¿åããã¨ãã§ããã
print(Color.RED.h, Color.RED.s, Color.RED.v)

# ç¬èªè²ãä½ããã¨ãã§ãããå½©åº¦ã¨æåº¦ã¯ããã©ã«ãã§100ã
my_green = Color(h=125)
my_dark_green = Color(h=125, s=80, v=30)

# ç¬èªè²ãããªã³ãããã¨ããã®è²ãã©ã®ããã«å®ç¾©ãããããæ­£ç¢ºã«ãããã
print(my_dark_green)

# ç¬èªè²ãçµè¾¼ã¿è²ã¨ãã¦è¿½å ãããã¨ãå¯è½ã
Color.MY_DARK_BLUE = Color(h=235, s=80, v=30)

# ãã®ããã«è¿½å ããå ´åãããªã³ãããã¨ãã®ååããè¡¨ç¤ºãããªãã
# ãããããã®å±æ§ãèª­ãã°ãh, s, v ãèª­ããã¨ã¯ã§ããã
print(Color.MY_DARK_BLUE)
print(Color.MY_DARK_BLUE.h, Color.MY_DARK_BLUE.s, Color.MY_DARK_BLUE.v)
 