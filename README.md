# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<div class="col-md-12">
                                <div class="form-group">
                                    <%= f.label :category, class: "text-white" %>
                                    <%= f.collection_check_boxes(:category_ids, Category.all, :id, :name, {prompt: "Please Select a Category (can be empty)"}, {multiple: true, class: "custom-select"}) %>
                                </div>
                            </div>


                            <% Category.order(:name).each do |category| %>
                                        <%= check_box :category_ids, category.id %>
                                        <%= label :category_ids, category.name %><br>
                                    <% end %>