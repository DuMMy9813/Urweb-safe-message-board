# Functional Requirements

## Inputs

* Username (string)
* Message (string)

## Outputs

* List of messages (username + message)

## Functional Workflow

1. User enters username and message
2. System validates input
3. Message is stored in the database
4. All messages are retrieved
5. Messages are displayed to the user

## Data Model

Message:

* username: string
* content: string
