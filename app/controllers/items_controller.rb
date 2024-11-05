class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def display_form
    render({ :template => "item_templates/display_form" })
  end

  def create_new_item
    # Get the user's inputs out of params
    # Create and save a new row in the items table
    # Send the user onwards, to "/"
    i = Item.new
i
    i.link_url = params.fetch("query_link_url")
    i.link_description = params.fetch("query_link_description")
    i.thumbnail_url = params.fetch("query_thumbnail_url")
i
    i.save

    redirect_to("/")
  end
end
