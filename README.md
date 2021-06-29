<img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?&style=for-the-badge&logo=ruby&logoColor=white"/> <img alt="Rails" src="https://img.shields.io/badge/rails%20-%23CC0000.svg?&style=for-the-badge&logo=ruby-on-rails&logoColor=white"/>

# private-events

A site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations to other users to attend. It follows the mapping of Advanced Associations and Active Record queries to query and filter while dealing to many to many database relations and using through tables for the associations.

![](https://img.shields.io/badge/Microverse-blueviolet)

## Built With
- Ruby, Rails 6

### Prerequisites
- A computer with ruby and rails 6 installed.

### set up 
- Follow these instructions to get a local copy up and running
```
git clone https://github.com/KabohaJeanMark/private-events/
cd private-events
```

- Install all the necessary gems
```
bundle install
```

- Migrate the database
```
rails db:migrate
```

### Run the project
- Run the rails server
```
rails server
```

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/KabohaJeanMark/private-events/issues).

- Checkout to a feature branch and make your commits with descriptive messages here and raise a Pull Request
```
git checkout -b <ft-branch-name>
```

- An explanation of the links and how to navigate the project.
- Authentication is done using devise and the sign up or sign in link always appears at the page top if the user has not logged in.
- For the links whose access requires a signed in user, they cannot be seen unless a user signs in.

|LINK   | ROUTE    | Functionality                                                            | Access                    |                                        
|--------------| -------------------------------------------------------| -------------------------------------------------------|-------------------------------------------|
|    HOME PAGE(default)     |```http://127.0.0.1:3000/``` |Reads all events, showing the upcoming first and the past events after  | All users. Even if not signed in |
|    Create an event      |```http://127.0.0.1:3000/event/<event.id>```  | Enables you to create an event with fields name, location and date            | Only signed in users |
|    Show user events      |```http://127.0.0.1:3000/users/<user.id>``` |Shows all events that user has registered to attend. SHows upcoming and past events          | Only signed in users |



## Author

👤 **Kaboha Jean Mark**

- GitHub: [@githubhandle](https://github.com/KabohaJeanMark)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/jean-mark-kaboha-software-engineer/)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to Microverse and the Odin project.

## 📝 License

This project is [MIT](./LICENSE) licensed.