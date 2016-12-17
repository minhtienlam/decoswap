class Item < ApplicationRecord
  include AlgoliaSearch
  belongs_to :user, optional: true
  has_many :bookings

  has_many :reviews, dependent: :destroy

  has_attachments :photos, maximum: 5

  monetize :price_cents

  algoliasearch do
    attribute :name, :description, :color, :condition, :designer, :materials, :category_item

    attributesToIndex ['name', 'description', 'color', 'condition', 'designer', 'materials', 'category_item']

    customRanking ['desc(created_at)']
  end

  def self.search(params = {})
    params.inject(Item) do |scope, (field, value)|
      next scope if value.blank?
      case field.to_sym
      when :category_item
        scope.where(category_item: value)
      when :price_cents
        scope.where(price_cents: value)
      when :materials
        scope.where(materials: value)
      when :color
        scope.where(color: value)
      when :query
        scope = scope.algolia_search(params[:query])
        scope = Item.where(id: scope.map(&:id))
      else
        scope
      end
    end
  end

  def change_status!
  	if self.status == "Rent"
  		self.status = "Free"
  	else
  		self.status = "Rent"
  	end
  end

end


  # validates :name, presence: true, uniqueness: true
  # validates :category_item, presence: true
  # validates :size, presence: true
  # validates :image_url, presence: true
