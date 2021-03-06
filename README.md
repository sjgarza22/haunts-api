# README

# HAUNTS

## Welcome to HAUNTS
In this README, you will learn how to install and use the HAUNTS application.

## Description
HAUNTS is an app that will allow users to search for haunted/paranormal locations near a location they enter.

## Installation
To install this program, please clone this repository.

You will need to have Ruby installed, and all additional Gems needed to run this program can be installed with the following command: bundle install

To create the neccessary databases run: rails db:migrate

Next run: rails db:seed. This will add the Haunts data to your databases.

To run the BackEnd, type this command next in your terminal: rails s

This is the BackEnd of the application ONLY. In order to interact with the database as intended, you will need to clone the FrontEnd repository--which you can find here: [Haunts](https://github.com/sjgarza22/haunts)--and follow the Readme Installation instructions to get the FrontEnd running.

## Use

Users will sign up by either manually creating a login or by using one of the third-party OAuth logins.

After signing up/logging in, a user will be redirecting to their Trip Index page. If no trips have been created, they will be prompted to create one.

A trip requires a title that is a minimum of three character's long. A user can also choose to invite other users at this time to join the trip.

When a trip is made an Idea Board is also created. When a user goes to the Idea Board for the first time, if not Ideas have been created they will be prompted to create one.

An Idea is made up of three main attributes: title, about and price. Each of those three items must be filled out, if the price is unknown or if the activity is free a user must enter in zero for the price. Once Ideas have been populated, users can filter the Ideas by a specific user.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/sjgarza22/haunts. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/sjgarza22/haunts-api/blob/master/CODE_OF_CONDUCT.md).

## License
The program is available as open source under the terms of the [MIT License](https://mit-license.org/).

## Code of Conduct
Everyone interacting in the Muses project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sjgarza22/haunts-api/blob/master/CODE_OF_CONDUCT.md).