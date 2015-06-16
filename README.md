## Pivotal Hacker

Managing projects is hard. Let's see if we can make a tool to help with the process.

In this challenge we'll be building a simple project management application in the vein of Pivotal Tracker/Trello/etc.

### Base Features - All Required

#### 1. Creating/Viewing Boards

Upon accessing the application, a user should see a simple list of existing boards,
as well as an option to create a new board. When creating a new board,
the user _must provide_ a "Title".

Upon selecting or creating a board, they should be taken to the board page.
This should include the familiar 4-status interface of Agile ticket states ("backlog", "current sprint", "in progress", and "done").

These states can be rendered horizontally or vertically as you see fit,
but the interface should include clearly differentiated sections for
each state.

#### 2. Creating/Viewing Tickets

When viewing a board, a user should have the option, via a form
positioned clearly on the page, to create a new ticket.

When creating a new ticket, the user _must provide_ a "Title". They _may
also_ provide a "Description" (textbox) and a "Status" (dropdown selection of available ticket states).

If not provided, the description should be blank, and the status should default to "backlog".

Existing tickets should be displayed on the page grouped under the appropriate
"status" section.

#### 3. Manipulating Tickets

Once a ticket has been created, a user should be able to move it through
the various ticket states. To facilitate this, each ticket should be
rendered with links or buttons for the appropriate "neighbor" states.

Thus, given the states "backlog", "current sprint", "in progress", and
"done", a ticket in the "current sprint" state should include links to
"move to backlog" and "move to in progress".

A ticket in the "backlog" state would only include one link: "move to
current sprint".

Clicking the link should send the appropriate request to the server to
update the ticket's status. Upon the next page load, it should show up
in the newly update column.
