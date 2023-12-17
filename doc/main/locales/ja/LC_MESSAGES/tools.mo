Þ    6      Ì              |  6   }  '   ´  +   Ü  V        _     {  :     b   R     µ  5   Ã  '   ù     !  1   3  @   e  Ë   ¦     r  `   ~     ß  3   ô  ª   (     Ó  ¿   à  *    	  
   Ë	     Ö	  7   ì	  À   $
  4   å
          :     Q  E   Y  e               º   %  3   à  %        :     Õ  G   ð     8     U     u  H        Ó  m   à  Ú   N  õ  )  Î       î     
  &   &  a  M  0   ¯  5   à  '        >     À    ×  W   Þ  v   6     ­  A   ½  <   ÿ     <  d   L  a   ±         .  u   >     ´  H   Ê  §        »  ,  Î  7   û     3   3   C   Q   w   å   É   I   ¯!  B   ù!  -   <"  	   j"  Q   t"  ]   Æ"  Û   $#  ö    $    ÷$     	&  3   )&  ·   ]&  '   '  R   ='  -   '  =   ¾'     ü'  b   (     ~(     (  ^  )  5  y*  -  ¯-     Ý/     ù/  ,   0   :mod:`tools <pybricks.tools>` -- General purpose tools A :class:`.Matrix` object is immutable. A matrix with the shape of a column vector. A stopwatch to measure time intervals. Similar to the stopwatch feature on your phone. A three-dimensional vector. Choose ``False`` to wait for all coroutines to finish. Choose ``True`` to wait for one coroutine to finish and then cancel the others, as if it's a "race". Common tools for timing, data logging, and linear algebra. Convenience function to create a :class:`.Matrix` with the shape (``2``, ``1``) or (``3``, ``1``). Elapsed time. Gets the cross product ``a`` Ã ``b`` of two vectors. Gets the current time of the stopwatch. How long to wait. If it was paused, it stays paused (but now at 0). If it was running, it stays running (but starting again from 0). If you don't use multitasking, you can ignore the ``await`` keyword and write programs as usual. Specifically, when ``run_task`` is not used, functions prefixed by ``await`` will act as normal functions. Input tools It also supports scalar multiplication (``c * A`` or ``A * c``) and scalar division (``A / c``). Linear algebra tools List of rows. Each row is itself a list of numbers. Mathematical representation of a matrix. It supports addition (``A + B``), subtraction (``A - B``), and matrix multiplication (``A * B``) for matrices of compatible size. Multitasking Note that this is just a convenience function that combines the display, buttons, and waits to make a simple menu. This means that it can be used anywhere in a program, not just at the start. One or more coroutines to run in parallel. Parameters Pauses the stopwatch. Pauses the user program for a specified amount of time. Pybricks supports cooperative multitasking using the ``async`` and ``await`` keywords. This allows operations that normally take some time to complete to run in parallel with other operations. Reads one byte from standard input without blocking. Resets the stopwatch time to 0. Resumes the stopwatch. Returns Returns a new :class:`.Matrix` that is the transpose of the original. Returns a tuple (``m``, ``n``), where ``m`` is the number of rows and ``n`` is the number of columns. Runs a coroutine from start to finish while blocking the rest of the program. This is used primarily to run the main coroutine of a program. Runs multiple coroutines concurrently. This creates a new coroutine that can be used like any other, including in another ``multitask`` statement. Shows a menu on the hub display and waits for the user to select an item using the buttons. Can be used in your own menu-program that lets you choose which of your other programs to run. The cross product, also a three-dimensional vector. The first symbol to show in the menu. The following example shows how to use multitasking to make a robot drive forward, then turn and move a gripper at the same time, and then drive backward. The main coroutine to run. The numeric value of the byte read or ``None`` if no data is available. The run state is unaffected: The second symbol, and so on... The selected symbol. These tools were previously located in the ``pybricks.geometry`` module. Timing tools Tuple of the return values of each coroutine. Unfinished coroutines will have ``None`` as their return value. Whenever you see a function or method prefixed by ``await``, this means that it supports multitasking. When running a coroutine with ``run_task``, all methods and functions prefixed by ``await`` will act as coroutines. from pybricks.pupdevices import Motor
from pybricks.parameters import Direction, Port
from pybricks.robotics import DriveBase
from pybricks.tools import multitask, run_task

# Set up all devices.
left = Motor(Port.A, Direction.COUNTERCLOCKWISE)
right = Motor(Port.B)
gripper = Motor(Port.C)
drive_base = DriveBase(left, right, 56, 114)


# Move the gripper up and down.
async def move_gripper():
    await gripper.run_angle(500, -90)
    await gripper.run_angle(500, 90)


# Drive forward, turn move gripper at the same time, and drive backward.
async def main():
    await drive_base.straight(250)
    await multitask(drive_base.turn(90), move_gripper())
    await drive_base.straight(-250)


# Runs the main program from start to finish.
run_task(main())
 from pybricks.tools import hub_menu

# This example assumes that you have three other programs in Pybricks Code,
# called "fly_mission", "drive_mission", and "zigzag". This example creates a
# menu that lets you pick which one to run.

# Choose a letter.
selected = hub_menu("F", "D", "Z")

# Based on the selection, run a program.
if selected == "F":
    import fly_mission
elif selected == "D":
    import drive_mission
elif selected == "Z":
    import zigzag
 x-coordinate of the vector. y-coordinate of the vector. z-coordinate of the vector (optional). Project-Id-Version: pybricks v3.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-04-26 18:25+0900
PO-Revision-Date: 2023-04-28 04:03+0900
Last-Translator: Minoru INACHI
Language: ja
Language-Team: ja
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 :mod:`tools <pybricks.tools>` -- æ±ç¨ãã¼ã« :class:`.Matrix` ãªãã¸ã§ã¯ãã¯ä¸å¤ã§ãã åãã¯ãã«ã®å½¢ãããè¡åã æééãè¨æ¸¬ããããã®ã¹ãããã¦ã©ããã§ããã¹ããã®ã¹ãããã¦ã©ããæ©è½ã«ä¼¼ã¦ãã¾ãã 3æ¬¡åãã¯ãã«ã ãã¹ã¦ã®ã³ã«ã¼ãã³ã®çµäºãå¾ã¤å ´åã¯ ``False`` ãæå®ãã¾ãã1ã¤ã®ã³ã«ã¼ãã³ã®çµäºãå¾ã£ã¦ä»ã®ã³ã«ã¼ãã³ãã­ã£ã³ã»ã«ããå ´åãã¤ã¾ããã¬ã¼ã¹ãã®ããã«æ±ãã«ã¯ ``True`` ãæå®ãã¾ãã ã¿ã¤ãã³ã°ã¨ããã¼ã¿ã­ã®ã³ã°ãç·å½¢ä»£æ°ã®ããã®å±éãã¼ã«ã (``2``, ``1``) ã¾ãã¯ (``3``, ``1``) ã®å½¢ç¶ã® :class:`.Matrix` ãä½æããããã®ä¾¿å©ãªæ©è½ã§ãã çµéæéã 2ã¤ã®ãã¯ãã«ã®åç© ``a`` Ã ``b`` ãåå¾ãã¾ãã ã¹ãããã¦ã©ããã®ç¾å¨æå»ãåå¾ãã¾ãã å¾æ©æéã ä¸æåæ­¢ãã¦ããå ´åã¯ãä¸æåæ­¢ããã¾ã¾ã§ã(ãã ã 0 ã«ãªãã¾ãï¼ã å®è¡ä¸­ã§ããã°ãå®è¡ä¸­ã®ã¾ã¾ã§ã(ãã ãã0 ããåã¹ã¿ã¼ããã¾ã)ã ãã«ãã¿ã¹ã¯ãä½¿ããªãå ´åã ``await`` ã­ã¼ã¯ã¼ããç¡è¦ãã¦ãéå¸¸éããã­ã°ã©ã ãæ¸ãã¾ããå·ä½çã«ã¯ ``run_task`` ãä½¿ç¨ããªãå ´åã ``await`` ã§ãã¬ãã£ãã¯ã¹ãããé¢æ°ã¯éå¸¸ã®é¢æ°ã¨ãã¦åä½ãã¾ãã å¥åãã¼ã« ã¾ããã¹ã«ã©ã¼åç®(``c * A`` ã¾ãã¯ ``A * c``)ãã¹ã«ã©ã¼é¤ç®(``A / c``)ããµãã¼ããã¾ãã ç·å½¢ä»£æ°ãã¼ã« è¡ã®ãªã¹ããåè¡ã¯ãããèªä½ãæ°å¤ã®ãªã¹ãã§ãã è¡åã®æ°å­¦çè¡¨ç¾ãäºææ§ã®ãããµã¤ãºã®è¡åã«å¯¾ãã¦ãå ç® (``A + B``)ãæ¸ç®  (``A - B``)ãä¹ç® (``A * B``) ããµãã¼ããã¾ãã ãã«ãã¿ã¹ã¯ ããã¯ããã£ã¹ãã¬ã¤ããã¿ã³ãããã³å¾æ©ãçµã¿åããã¦ã·ã³ãã«ãªã¡ãã¥ã¼ãä½æããããã®ä¾¿çé¢æ°ã§ãããã¨ã«æ³¨æãã¦ãã ããããããã£ã¦ããã­ã°ã©ã ã®éå§æã ãã§ãªãããã­ã°ã©ã åã®ã©ãã§ãä½¿ãã¾ãã ä¸¦è¡ãã¦å®è¡ãã1ã¤ä»¥ä¸ã®ã³ã«ã¼ãã³ã ãã©ã¡ã¼ã¿ ã¹ãããã¦ã©ãããä¸æåæ­¢ãã¾ãã æå®ãããæéã®éãã¦ã¼ã¶ãã­ã°ã©ã ãä¸æåæ­¢ãã¾ãã Pybricks ã¯ ``async`` ããã³ ``await`` ã­ã¼ã¯ã¼ããä½¿ã£ãåèª¿çãã«ãã¿ã¹ã¯ããµãã¼ããã¦ãã¾ããããã«ãããéå¸¸æéããããæä½ãä»ã®æä½ã¨ä¸¦è¡ãã¦å®è¡ã§ãã¾ãã æ¨æºå¥åãããã­ãã¯ãªãã§1ãã¤ããèª­ã¿è¾¼ã¿ã¾ãã ã¹ãããã¦ã©ããã®æéã 0 ã«ãªã»ãããã¾ãã ã¹ãããã¦ã©ãããåéãã¾ãã æ»ãå¤ åã®è¡åã®è»¢ç½®è¡åã§ããæ°ãã :class:`.Matrix` ãè¿ãã¾ãã ã¿ãã« (``m``, ``n``) ãè¿ãã¾ãã ``m`` ã¯è¡ã®æ°ã ``n`` ã¯åã®æ°ã§ãã ãã­ã°ã©ã ã®æ®ãé¨åããã­ãã¯ããªãããã³ã«ã¼ãã³ãæåããæå¾ã¾ã§å®è¡ãã¾ããããã¯ä¸»ã«ããã­ã°ã©ã ã®ã¡ã¤ã³ã³ã«ã¼ãã³ãå®è¡ããããã«ä½¿ãã¾ãã è¤æ°ã®ã³ã«ã¼ãã³ãåæã«å®è¡ãã¾ããããã«ãããä»ã®ã©ã®ã³ã«ã¼ãã³ã¨åæ§ã«ä½¿ããæ°ããã³ã«ã¼ãã³ãä½æããã¾ããã¾ããå¥ã®ãã«ãã¿ã¹ã¯ã¹ãã¼ãã¡ã³ãåã§ãä½¿ãã¾ãã ããã®ãã£ã¹ãã¬ã¤ã«ã¡ãã¥ã¼ãè¡¨ç¤ºããã¦ã¼ã¶ã¼ããã¿ã³ãä½¿ã£ã¦ã¢ã¤ãã é¸æããã®ãå¾ã¡ã¾ããããã¯ãä»ã®ãã­ã°ã©ã ãå®è¡ãããã©ãããé¸æããã«ã¹ã¿ã ã¡ãã¥ã¼ãã­ã°ã©ã åã§ä½¿ãã¾ãã åç©ã®3æ¬¡åãã¯ãã«ã ã¡ãã¥ã¼ã«è¡¨ç¤ºããæåã®ã·ã³ãã«ã æ¬¡ã®ä¾ã§ã¯ããã«ãã¿ã¹ã¯ãä½¿ã£ã¦ãã­ããããåé²ãããåæã«ã°ãªããã¼ãä¸ä¸ã«åããããã®å¾å¾éãããæ¹æ³ãç¤ºãã¦ãã¾ãã å®è¡ããã¡ã¤ã³ã³ã«ã¼ãã³ã èª­ã¿è¾¼ãã ãã¤ãã®å¤ããã¼ã¿ãå©ç¨ã§ããªãå ´åã¯ ``None``  å®è¡ç¶æã¯ãå½±é¿ãåãã¾ããã 2çªç®ã®ã·ã³ãã«ãããã³ãã®å¾ã®ã·ã³ãã«... é¸æãããã·ã³ãã«ã ãã®ãã¼ã«ã¯ä»¥åã ``pybricks.geometry`` ã¢ã¸ã¥ã¼ã«ã«éç½®ããã¦ãã¾ããã ã¿ã¤ãã³ã°ãã¼ã« åã³ã«ã¼ãã³ã®æ»ãå¤ã®ã¿ãã«ãçµäºãã¦ããªãã³ã«ã¼ãã³ã¯æ»ãå¤ã¨ãã¦ ``None`` ãæã¡ã¾ãã ``await`` ã­ã¼ã¯ã¼ãã§ãã¬ãã£ãã¯ã¹ãããé¢æ°ãã¡ã½ãããããã°ãããã¯ãã«ãã¿ã¹ã¯ããµãã¼ããã¦ãããã¨ãæå³ãã¾ãã ``run_task`` ã§ã³ã«ã¼ãã³ãå®è¡ããã¨ã ``await`` ã§ãã¬ãã£ãã¯ã¹ããããã¹ã¦ã®ã¡ã½ãããé¢æ°ã¯ã³ã«ã¼ãã³ã¨ãã¦åä½ãã¾ãã from pybricks.pupdevices import Motor
from pybricks.parameters import Direction, Port
from pybricks.robotics import DriveBase
from pybricks.tools import multitask, run_task

# å¨ã¦ã®ããã¤ã¹ãã»ããã¢ããã
left = Motor(Port.A, Direction.COUNTERCLOCKWISE)
right = Motor(Port.B)
gripper = Motor(Port.C)
drive_base = DriveBase(left, right, 56, 114)


# ã°ãªããã¼ãã¢ããã»ãã¦ã³ã
async def move_gripper():
    await gripper.run_angle(500, -90)
    await gripper.run_angle(500, 90)


# åé²ãããåæã«ã°ãªããã¼ãåãããå¾éãããã
async def main():
    await drive_base.straight(250)
    await multitask(drive_base.turn(90), move_gripper())
    await drive_base.straight(-250)


# éå§ããçµäºã¾ã§ã¡ã¤ã³ãã­ã°ã©ã ãèµ°ãããã
run_task(main())
 from pybricks.tools import hub_menu

# ãã®ä¾ã¯ãPybricks Code ã« "fly_mission", "drive_mission",
# "zigzag" ã¨ããååã®ä»ã®3ã¤ã®ãã­ã°ã©ã ããããã¨ãåæã¨ãã¦ãã¾ãã
# ãã®ä¾ã§ã¯ãå®è¡ãããã­ã°ã©ã ãé¸æã§ããã¡ãã¥ã¼ãä½æãã¾ãã

# æå­ãé¸æã
selected = hub_menu("F", "D", "Z")

# é¸æãããã®ã«è©²å½ãããã­ã°ã©ã ãå®è¡ã
if selected == "F":
    import fly_mission
elif selected == "D":
    import drive_mission
elif selected == "Z":
    import zigzag
 ãã¯ãã«ã® x åº§æ¨ã ãã¯ãã«ã® y åº§æ¨ã ãã¯ãã«ã® z åº§æ¨(ãªãã·ã§ã³)ã 