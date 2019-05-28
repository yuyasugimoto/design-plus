class Request < ApplicationRecord
  validates :request_user, {presence: true}
  validates :request_type, {presence: true}
  validates :project_name, {presence: true}
  validates :product_name, {presence: true}
  validates :request_detail, {presence: true}
  validates :desired_date, {presence: true}
  validates :person_charge, {presence: true}
  validates :request_flg, {presence: true}
end
