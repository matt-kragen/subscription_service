# Subscription Service
> Subscription Service is a take-home challenge for Mod 4 of Turing School of Software & Design

## Contents
- [Contents](#contents)
- [Overview](#overview)
- [Tools Utilized](#tools-utilized)
- [Endpoints](#endpoints)
- [Database Schema](#database-schema)
- [Possible Extensions](#possible-extensions)

### Overview
This application is a back-end API, made for a hypothetical tea subscription service. A user can use 3 endpoints to view their current or past subscriptions, create a new tea subscription, or cancel an existing subscription

### Tools Utilized
| Development | Testing         | Packages          |
|:-----------:|:---------------:|:-----------------:|
| Ruby 2.7.2  | RSpec Rails     | FastJSON API      |
| Rails 5.2.6 | ShouldaMatchers | Factory Bot Rails |
| VSCode      | Pry             | Faker             |
|             | Postman         |                   |
|             | SimpleCov       |                   |

### Endpoints
| Feature | Endpoint |
|-----|-----|
| Subscribe to a new tea subscription | `POST /api/v1/customers/:id/subscriptions` |
| Cancel a customer's tea subscription | `UPDATE /api/v1/customers/:id/subscriptions` |
| See all of a customer’s subscriptions (active and cancelled) | `GET /api/v1/customers/:id/subscriptions` |

### Database Schema
![image](https://user-images.githubusercontent.com/56685055/140443277-9b254ec4-a565-4896-a020-48809ce4fc08.png)

### Possible Extensions
The functionality of this application can be expanded upon in several ways.
e.g.
- Several packages are commented out in the Gemfile that are tied directly to API consumption
- Error handling was customized for the "Subscriptions" resource, but is built in such a way as to apply to all resources
- CRUD functionality through query params is possible, but can be restricted to JSON bodies
- If deployed, continuous integration through Travis or Circle CI is possible
