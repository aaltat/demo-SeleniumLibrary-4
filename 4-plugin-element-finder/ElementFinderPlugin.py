from robot.api import logger

from SeleniumLibrary.base import LibraryComponent, keyword
from SeleniumLibrary.locators import ElementFinder


class DummyFinder(object):

    def __init__(self, ctx):
        self.ctx = ctx

    def find(self, *args):
        logger.info('DummyFinder args "%s"' % str(args))
        logger.info('Original finder %s'
                    % self.ctx._original_element_finder )
        return 'Dummy find'


class ElementFinderPlugin(LibraryComponent):

    def __init__(self, ctx):
        LibraryComponent.__init__(self, ctx)
        ctx._original_element_finder = ElementFinder(ctx)
        self.element_finder = DummyFinder(ctx)

    @keyword
    def other_keyword(self, text):
        self.info('Other keyword')
        return '%s %s' % (self.find_element(text), text)
