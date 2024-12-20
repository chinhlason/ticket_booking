## API Description:
**1. GET ticket/:id** 
- Description: Get ticket by id
- Request: 
    - id: string
- Response:
    - id: id ticket
    - showtime info: movie, room, start, end
    - seat: name
    - status: value

**2. PUT ticket/payment/:id**
- Description: Change status of ticket from 'available' to 'unavailable'
- Request:
    - id: string
- Response:
    - id: id ticket
    - status: value
    - id account: id account

**3. GET room/:id**
- Description: Get room by id
- Request:
    - id: string
- Response:
    - id: id room
    - name: name room
    - seat[]: list of seat (contains ticket info)

**4. GET payment/balances**
- Description: Get list of balances
- Request: None
- Response:
    - id: id account
    - balance: value

**5. POST payment/:id_ticket/:id_account/:status**
- Description: Create a payment with status (success/fail)
- Request:
    - id_ticket: string
    - id_account: string
    - status: string
- Response:
    - status: success/fail
- Logic: 
    - success : put a message to Kafka topic 'payment' with value (id_ticket, id_account)
    - fail : response to client with status 'fail'

**6. POST payment/refund/:id**
- Description: Refund a payment
- Request:
    - id: id account
- Response:
    - status: success/fail
