# README

This is the Rails API backend for "TASC". The frontend for this application can be found [here](https://github.com/jstone18/tasc-backend).
TASC is a student management application desgned for after-school programs or any situation where you need to keep track of attendance for an individual child along with personal info.

A profile can be created for a child that includes medical info and emergency contacts. Each profile also contains an attendance record that timestamps each "check-in" and "check-out" for an individual child.

Both repos must be cloned in order to succesfully run application. For this backend api, follow these steps:

  ```
  bundle install
  ```

  ```
  rails db:create && rails db:migrate 
  ```

  ```
  rails db:seed
  ```

  ```
  rails s -p 3001
  ```

### EndPoints
Students:
```
api/v1/students
```
Attendances:
```
api/v1/students/:id/attendances
```
Rooms:
```
api/v1/rooms

### MIT LICENSE
Copyright (c) 2011-2019 GitHub Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.