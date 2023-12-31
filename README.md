# Iroha 2 - Block Explorer
Welcome to the Iroha 2 - Block Explorer! This is a Ruby on Rails application that will be used to render the block explorer website for Iroha 2. This repository is still under development and thanks to the wonderful [Iroha 2](https://iroha.tech/) team that have inspired to implement this repository.
![Demo picture](./public/demo.png)

## Prerequisites
Before you begin, make sure you have the following installed:

- Ruby : `3.0.3` (RVM recommended)
- Ruby on Rails : `6.1.7.4`
- iroha-2-client-service : it is required as backend to communicate with Iroha 2.

## Getting Started
Follow these steps to set up and run the project locally on your machine.

### Step 1: Clone the Repository

```sh
git clone git@github.com:VandyTheCoder/Iroha-2-Block-Explorer.git
cd Iroha-2-Block-Explorer
```

### Step 2: Install Dependencies
Make sure you have RVM (Ruby Version Manager) installed. If not, you can install it following the instructions on the [RVM website](https://rvm.io/).

Navigate to the project directory and let RVM create a gemset:

```sh
rvm use .      # This will read the .ruby-version file and create a gemset if not already present
```
Install project dependencies using Bundler:

```sh
gem install bundler
bundle install
```

### Step 3: Run the Application

Start the Rails server:

```sh
rails server
```

### Step 4: Access the Application
Open your web browser and navigate to http://localhost:3000 to access the application.

## Contributing
If you would like to contribute to the project, follow these steps:

1. Fork the repository on GitHub.
2. Create a new branch for your feature: git checkout -b feature-name.
3. Make your changes and commit them: git commit -m "Add your message here".
4. Push your changes to your fork: git push origin feature-name.
5. Submit a pull request to the main repository.
License
This project is licensed under the [LICENSE NAME] - see the LICENSE file for details.

## Contact
If you have any questions or need assistance, feel free to contact us at vandysodanheang@gmail.com.

Thank you for using ***Iroha 2 - Block Explorer***! We hope you find it useful and enjoy working with the application.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
