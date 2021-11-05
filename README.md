# Subscription Service
> Subscription Service is a take-home challenge for Mod 4 of Turing School of Software & Design

### Contents
- [Contents](#contents)
- [Overview](#overview)
- [Tools Utilized](#tools-utilized)
- [Local Setup](#local-setup)
- [Endpoints](#endpoints)
- [Example Responses](#example-responses)
- [Database Schema](#database-schema)
- [Possible Extensions](#possible-extensions)

## Overview
This application is a back-end API, made for a hypothetical tea subscription service. A user can use 3 endpoints to view their current or past subscriptions, create a new tea subscription, or cancel an existing subscription

## Tools Utilized
| Development | Testing         | Packages          |
|:-----------:|:---------------:|:-----------------:|
| Ruby 2.7.2  | RSpec Rails     | FastJSON API      |
| Rails 5.2.6 | ShouldaMatchers | Factory Bot Rails |
| VSCode      | Postman         | Faker             |
|             | SimpleCov       | Pry               |
|             |                 | Rubocop Rails     |

## Local Setup

1. This application was built with Ruby 2.7.2. From the command line, run:
```sh
rbenv install 2.7.2
```
2. With rbenv you can set up your Ruby version for a directory and all subdirectories within it. Change into a directory that will eventually contain this repo and then run:
```sh
rbenv local 2.7.2
```
You can check that your Ruby version is correct with `ruby -v`

3. Once you have verified your Ruby version is 2.7.2, check if you have Rails. From the command line:
```sh
rails -v
```
4. If you get a message saying rails is not installed or you do not have version 5.2.6, run
```sh
gem install rails --version 5.2.6
```
5. You may need to quit and restart your terminal session to see these changes show up

## Endpoints
| Feature | Endpoint |
|-----|-----|
| Subscribe to a new tea subscription | `POST /api/v1/customers/:id/subscriptions` |
| Cancel a customer's tea subscription | `UPDATE /api/v1/customers/:id/subscriptions` |
| See all of a customer’s subscriptions (active and cancelled) | `GET /api/v1/customers/:id/subscriptions` |

## Example Responses
> Responses captured via Postman
<br>

Subscription index for a single customer
<br>
![Screen Shot 2021-11-04 at 7 25 23 PM](https://user-images.githubusercontent.com/56685055/140448062-5703f819-909e-4122-a12f-8d9c9585bc5e.png)
<hr><br>

Creating a new subscription
<br>
![Screen Shot 2021-11-04 at 7 29 32 PM](https://user-images.githubusercontent.com/56685055/140448327-3bf59196-94e4-4071-8843-77260863cf48.png)
<hr><br>

Cancelling an existing subscription
<br>
![Screen Shot 2021-11-04 at 7 30 48 PM](https://user-images.githubusercontent.com/56685055/140448439-2a543311-6ba3-4bdc-8b97-ba800a532313.png)
<hr><br>

Error Handling
<br>
![Screen Shot 2021-11-04 at 7 32 03 PM](https://user-images.githubusercontent.com/56685055/140448543-e7b725ef-778b-4b3a-8ec6-cf63dd846391.png)

## Database Schema
![image](https://user-images.githubusercontent.com/56685055/140443277-9b254ec4-a565-4896-a020-48809ce4fc08.png)

## Possible Extensions
The functionality of this application can be expanded upon in several ways.
e.g.
- Several packages are commented out in the Gemfile that are tied directly to API consumption
- Error handling was customized for the "Subscriptions" resource, but is built in such a way as to apply to all resources
- CRUD functionality through query params is possible, but can be restricted to JSON bodies
- If deployed, continuous integration through Travis or Circle CI is possible
