from SeleniumLibrary import BrowserManagementKeywords
from SeleniumLibrary.base import LibraryComponent, keyword


class Plugin(LibraryComponent):

    def __init__(self, ctx):
        LibraryComponent.__init__(self, ctx)

    @keyword
    def open_browser(self, location):
        """Overwrite existing keyword."""
        self.info(location)
        return location

    @keyword
    def open_real_browser(self):
        bm = BrowserManagementKeywords(self.ctx)
        bm.open_browser('http://localhost:7000/html', 'chrome')

    @keyword
    def do_something(self):
        element = self.find_element('xpath://title')
        self.info('One element %s' % element)
        elements = self.find_elements('xpath://*')
        self.info('List of elements %s' % elements)
        self.info('Currently active driver here: %s ' % self.driver)
