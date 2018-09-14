EventCategory.create!([
  {name: "Konkatsu", description: "Konkatsu events"},
  {name: "Koikatsu", description: "Koikatsu events"},
  {name: "Gourmet", description: "Gourmet themed events"}
])
Event.create!([
  {title: "Nice Konkatsu Event", location: "銀座", start_at: "2020-03-28 09:00:00", ticket_price: 5000, ticket_quantity: 30, event_category_id: 1},
  {title: "Great Koikatsu Event", location: "渋谷", start_at: "2020-04-05 09:00:00", ticket_price: 4000, ticket_quantity: 25, event_category_id: 2},
  {title: "Gourmet Themed Event", location: "渋谷", start_at: "2020-03-13 14:36:00", ticket_price: 6000, ticket_quantity: 35, event_category_id: 3},
  {title: "Nice Konkatsu1 Event", location: "渋谷", start_at: "2020-03-13 14:36:00", ticket_price: 5000, ticket_quantity: 35, event_category_id: 1},
  {title: "Koikatsu Event", location: "渋谷", start_at: "2020-03-13 14:36:00", ticket_price: 1000, ticket_quantity: 35, event_category_id: 2},
  {title: "Gourmet Event", location: "渋谷", start_at: "2020-03-13 14:36:00", ticket_price: 3000, ticket_quantity: 35, event_category_id: 3},
  {title: "婚活イベント", location: "池袋", start_at: "2020-03-13 14:36:00", ticket_price: 1000, ticket_quantity: 35, event_category_id: 1},
  {title: "恋活イベント", location: "渋谷", start_at: "2020-03-13 14:36:00", ticket_price: 3000, ticket_quantity: 35, event_category_id: 2},
  {title: "食のイベント", location: "上野", start_at: "2020-03-13 14:36:00", ticket_price: 2000, ticket_quantity: 35, event_category_id: 3},
])
