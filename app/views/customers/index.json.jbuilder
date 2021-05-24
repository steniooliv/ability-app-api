json.array! @customers do |customer|
  json.partial! customer
end