.. pybricks-requirements:: cityhub

City Hub
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. figure:: ../../main/cad/output/hub-city.png
    :width: 30%

.. blockimg:: pybricks_variables_set_city_hub_option0

.. autoclass:: pybricks.hubs.CityHub
    :no-members:

    .. rubric:: Using the hub status light

    .. blockimg:: pybricks_blockLightOnColor_cityhub_on

    .. automethod:: pybricks.hubs::CityHub.light.on

    .. blockimg:: pybricks_blockLightOnColor_cityhub_off

    .. automethod:: pybricks.hubs::CityHub.light.off

    .. automethod:: pybricks.hubs::CityHub.light.blink

    .. automethod:: pybricks.hubs::CityHub.light.animate

    .. rubric:: Using the battery

    .. blockimg:: pybricks_blockBatteryMeasure_CityHub_battery.voltage

    .. automethod:: pybricks.hubs::CityHub.battery.voltage

    .. blockimg:: pybricks_blockBatteryMeasure_CityHub_battery.current

    .. automethod:: pybricks.hubs::CityHub.battery.current

    .. rubric:: Button and system control

    .. blockimg:: pybricks_blockButtonIsPressed_CityHub

    .. automethod:: pybricks.hubs::CityHub.buttons.pressed

    .. automethod:: pybricks.hubs::CityHub.system.info

    .. blockimg:: pybricks_blockHubStopButton_CityHub

    .. blockimg:: pybricks_blockHubStopButton_CityHub_none

    .. automethod:: pybricks.hubs::CityHub.system.set_stop_button

    .. automethod:: pybricks.hubs::CityHub.system.storage

        You can store up to 128 bytes of data on this hub. The data is cleared
        when you update the Pybricks firmware or if you restore the original
        firmware.

    .. automethod:: pybricks.hubs::CityHub.system.reset_storage

    .. blockimg:: pybricks_blockHubShutdown_CityHub

    .. automethod:: pybricks.hubs::CityHub.system.shutdown


Status light examples
---------------------

Turning the light on and off
****************************

.. literalinclude::
    ../../../examples/pup/hub_common/build/light_off_cityhub.py

Changing brightness and using custom colors
*******************************************

.. literalinclude::
    ../../../examples/pup/hub_common/build/light_hsv_cityhub.py

Making the light blink
**********************

.. literalinclude::
    ../../../examples/pup/hub_common/build/light_blink_cityhub.py

Creating light animations
*************************

.. literalinclude::
    ../../../examples/pup/hub_common/build/light_animate_cityhub.py

Button and system examples
----------------------------------

Using the stop button during your program
*****************************************

.. literalinclude::
    ../../../examples/pup/hub_common/build/button_single_cityhub.py

Turning the hub off
*****************************************

.. literalinclude::
    ../../../examples/pup/hub_common/build/system_shutdown_cityhub.py
