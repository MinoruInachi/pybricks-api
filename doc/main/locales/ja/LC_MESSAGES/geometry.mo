Ū          Ü                 ;     '   Ų  +     b   -  K    /  Ü  `     3   m  Ē   Ą  
   L     W     h  E   p  e   ļ  I       f  !   v  3     ;   Ė  2   	     ;	     W	  &   s	  a  	  6   ü
  5   3  '   i  v         H    u   á  H   W  §         H     X  	   h  Q   r  ]   Ä  f   "  	    $     E   ¸  E   ū  9   D     ~       ,   ļ   :mod:`geometry <pybricks.geometry>` -- Geometry and algebra A :class:`.Matrix` object is immutable. A matrix with the shape of a column vector. Convenience function to create a :class:`.Matrix` with the shape (``2``, ``1``) or (``3``, ``1``). For example, the hub may be mounted upside down in your design. If you configure the settings as shown in :numref:`fig_imuexamples`, the hub measurements will be adjusted accordingly. This way, a positive acceleration value in the X direction means that your *robot* accelerates forward, even though the *hub* accelerates backward. How to configure the ``top_side`` and ``front_side`` settings for three different robot designs. The same technique can be applied to other hubs and other creations, by noting which way the top and front :class:`Side <Side>` of the hub are pointing. The example on the left is the default configuration. It also supports scalar multiplication (``c * A`` or ``A * c``) and scalar division (``A / c``). List of rows. Each row is itself a list of numbers. Mathematical representation of a matrix. It supports addition (``A + B``), subtraction (``A - B``), and matrix multiplication (``A * B``) for matrices of compatible size. Parameters Reference frames Returns Returns a new :class:`.Matrix` that is the transpose of the original. Returns a tuple (``m``, ``n``), where ``m`` is the number of rows and ``n`` is the number of columns. The Pybricks module and this documentation use the following conventions: To make sure that all hub measurements (such as acceleration) have the correct value and sign, you can specify how the hub is mounted in your creation. This adjust the measurements so that it is easy to see how your *robot* is moving, rather than how the *hub* is moving. Unit axes of a coordinate system. X: Positive means forward. Negative means backward. Y: Positive means to the left. Negative means to the right. Z: Positive means upward. Negative means downward. x-coordinate of the vector. y-coordinate of the vector. z-coordinate of the vector (optional). Project-Id-Version: pybricks v3.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-02-16 22:02+0900
PO-Revision-Date: 2023-02-23 10:12+0900
Last-Translator: Minoru INACHI
Language: ja
Language-Team: ja
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.13.1
 :mod:`geometry <pybricks.geometry>` -- åšžäŊã¨äģŖæ° :class:`.Matrix` ãĒãã¸ã§ã¯ãã¯ä¸å¤ã§ãã åãã¯ããĢãŽåŊĸãããčĄåã (``2``, ``1``) ãžãã¯ (``3``, ``1``) ãŽåŊĸįļãŽ :class:`.Matrix` ãäŊæãããããŽäžŋåŠãĒæŠčŊã§ãã ãã¨ãã°ããããä¸ä¸éããžãĢåãäģããããĻãããããĒããļã¤ãŗãå¯čŊã§ãã :numref:`fig_imuexamples` ãŽãããĢč¨­åŽããã¨ããããĢåŋããĻãããŽč¨æ¸Ŧå¤ãčĒŋæ´ãããžããããŽãããĢããã¨ãX æšåãŽå éåēĻãæ­ŖãŽå¤ã§ããã°ã *ãã* ãåžæšãĢå éããĻããã­ãããã¯åæšãĢå éãããã¨ãĢãĒããžãã īŧã¤ãŽį°ãĒãã­ãããããļã¤ãŗãŽ ``top_side`` ã¨ ``front_side`` ãŽč¨­åŽæšæŗã§ãããããŽ top ã¨ front ãŽ :class:`Side <Side>` ããŠãĄããåããĻãããããĄãĸãããã¨ã§ãäģãŽãããäģãŽäŊåãĢãåãææŗãéŠį¨ã§ããžããåˇĻãŽäžã¯ããããŠãĢããŽč¨­åŽã§ãã ãžãããšãĢãŠãŧåįŽ(``c * A`` ãžãã¯ ``A * c``)ããšãĢãŠãŧé¤įŽ(``A / c``)ããĩããŧãããžãã čĄãŽãĒãšããåčĄã¯ãããčĒäŊãæ°å¤ãŽãĒãšãã§ãã čĄåãŽæ°å­ĻįčĄ¨įžãäēææ§ãŽãããĩã¤ãēãŽčĄåãĢå¯žããĻãå įŽ (``A + B``)ãæ¸įŽ  (``A - B``)ãäšįŽ (``A * B``) ããĩããŧãããžãã ããŠãĄãŧãŋ åēæēåē§æ¨įŗģ æģãå¤ åãŽčĄåãŽčģĸįŊŽčĄåã§ããæ°ãã :class:`.Matrix` ãčŋããžãã ãŋããĢ (``m``, ``n``) ãčŋããžãã ``m`` ã¯čĄãŽæ°ã ``n`` ã¯åãŽæ°ã§ãã Pybricks ãĸã¸ãĨãŧãĢã¨ããŽãã­ãĨãĄãŗãã§ã¯ãäģĨä¸ãŽčĻį´ãäŊŋį¨ããĻããžãã ãããŽč¨æ¸Ŧå¤(å éåēĻãĒãŠ)ãæ­Ŗããå¤ã¨įŦĻåˇãĢãĒããããĢããããŽåãäģãæšãæåŽã§ããžãããããĢããã *ãã* ãŽåãã§ã¯ãĒãã *ã­ããã* ãŽåãããããããããããĢč¨æ¸Ŧå¤ãčĒŋæ´ããžãã åē§æ¨įŗģãæ§æããåäŊčģ¸ã X: æ­Ŗã¯åæšãæåŗããžããč˛ ã¯åžæšãæåŗããžãã Y: æ­Ŗã¯åˇĻãæåŗããžããč˛ ãŽå¤ã¯åŗãæåŗããžãã Z: æ­Ŗã¯ä¸æšåãč˛ ã¯ä¸æšåãæåŗããžãã ãã¯ããĢãŽ x åē§æ¨ã ãã¯ããĢãŽ y åē§æ¨ã ãã¯ããĢãŽ z åē§æ¨(ãĒããˇã§ãŗ)ã 