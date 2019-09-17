SeleniumLibrary
===============

.. contents::

Introduction
------------
This is project contains few short Robot Framework tests which demonstrates SeleniumLibrary 4.0 new features.
The demo contains few examples for the `Plugin API`_, `Event Firing WenDriver`_ and `Open Browser`_ keyword
supporting `Selenium Options`_ object.

Install
-------
Follow the SeleniumLibrary `installation instructions`_  and setting up the `browser driver`_. Test may work
with any browser, but there are many test that only work with `Chrome browser`_.

Running demo
------------
Before running test, start the simple Python http server:

.. code:: bash

      python resources/testserver/testserver.py start

Demo is designed to run with Linux shell by using the helper scripts, demo1.sh, demo2.sh, demo3.sh, demo4.sh and
demo5.sh. But if you are using different operating system, then copy paste the robot ... command from the
script to operating system shell and it should work out of the box.

Result
------
Result for each demo can be viewed from Github pages.

==================================  ==========================  ==========================
Demo                                Report                      Log
==================================  ==========================  ==========================
Demo 1: Basic plugin example        `Demo 1 report`_            `Demo 1 log`_
Demo 2: Event Firing WebDriver      `Demo 2 report`_            `Demo 2 log`_
Demo 3: Selenium Options            `Demo 3 report`_            `Demo 3 log`_
Demo 4: ElementFinder               `Demo 4 report`_            `Demo 4 log`_
Demo 3: Selenium Wire support       `Demo 5 report`_            `Demo 5 log`_
==================================  ==========================  ==========================

.. _Plugin API: https://github.com/robotframework/SeleniumLibrary/blob/master/docs/extending/extending.rst#plugins
.. _Event Firing WenDriver: https://github.com/robotframework/SeleniumLibrary/blob/master/docs/extending/extending.rst#eventfiringwebdriver-support
.. _Open Browser: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser
.. _Selenium Options: https://seleniumhq.github.io/selenium/docs/api/py/webdriver_chrome/selenium.webdriver.chrome.options.html
.. _installation instructions: https://github.com/robotframework/SeleniumLibrary#installation
.. _browser driver: https://github.com/robotframework/SeleniumLibrary#browser-drivers
.. _Chrome browser: https://www.google.com/chrome/
.. _Demo 1 report: https://aaltat.github.io/demo-SeleniumLibrary-4/demo1/report.html
.. _Demo 1 log: https://aaltat.github.io/demo-SeleniumLibrary-4/demo1/log.html
.. _Demo 2 report: https://aaltat.github.io/demo-SeleniumLibrary-4/demo2/report.html
.. _Demo 2 log: https://aaltat.github.io/demo-SeleniumLibrary-4/demo2/log.html
.. _Demo 3 report: https://aaltat.github.io/demo-SeleniumLibrary-4/demo3/report.html
.. _Demo 3 log: https://aaltat.github.io/demo-SeleniumLibrary-4/demo3/log.html
.. _Demo 4 report: https://aaltat.github.io/demo-SeleniumLibrary-4/demo4/report.html
.. _Demo 4 log: https://aaltat.github.io/demo-SeleniumLibrary-4/demo4/log.html
.. _Demo 5 report: https://aaltat.github.io/demo-SeleniumLibrary-4/demo5/report.html
.. _Demo 5 log: https://aaltat.github.io/demo-SeleniumLibrary-4/demo5/log.html
