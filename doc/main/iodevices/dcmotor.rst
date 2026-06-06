DC Motor
^^^^^^^^^^^^^^^^^^

This class is specifically for EV3 and NXT. This lets you drive motors that
are not automatically detected as motors. This includes RCX motors and Power
Function motors that are connected via the official converter cables. Note:
Applying motor power to custom electronics may damage the hub or the device.

For Powered Up DC Motors, just use
the :class:`DCMotor <pybricks.pupdevices.DCMotor>` class instead, which will
automatically detect the motor and use the correct and safe settings.

.. figure:: ../../main/cad/output/iodevice-dcmotor.png
   :width: 40 %

.. autoclass:: pybricks.iodevices.DCMotor
    :no-members:

    .. automethod:: pybricks.iodevices.DCMotor.dc

    .. automethod:: pybricks.iodevices.DCMotor.brake

    .. automethod:: pybricks.iodevices.DCMotor.stop

    .. automethod:: pybricks.iodevices.DCMotor.settings
