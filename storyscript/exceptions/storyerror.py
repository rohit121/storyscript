# -*- coding: utf-8 -*-
import os


class StoryError(SyntaxError):

    """
    Handles story-related errors (reading, parsing, compiling), transforming
    raw errors in nice and helpful messages.
    """

    def __init__(self, error, story, path=None):
        self.error = error
        self.story = story
        self.path = path

    def name(self):
        """
        Extracts the name of the story from the path.
        """
        if self.path:
            working_directory = os.getcwd()
            if self.path.startswith(working_directory):
                return self.path[len(working_directory) + 1:]
        return 'story'

    def header(self):
        """
        Creates the header of the message
        """
        template = 'Error: **syntax error** in {} at line {}, column {}'
        return template.format(self.name(), self.error.line, self.error.column)

    def message(self):
        pass

    def echo(self):
        """
        Prints the message
        """
        print(self.message())
