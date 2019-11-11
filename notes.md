  <!-- <select name="wine_id">
    <%= @wines.each do |wine| %>
      <option value="<%= wine.id %>"><%= wine.name %> <%= wine.producer.name %></option>
    <% end %>
  </select> -->

***A session is just a place to store data during one request that you can read during later requests.

***If you're creating an object through an association, build should be preferred over new as build keeps your in-memory object, user (in this case) in a consistent state even before any objects have been saved to the database.


https://stackoverflow.com/questions/26581269/how-do-i-create-a-link-route-directly-to-a-scope


Add Reviewed By In Wine#show
<% @wine.reviewers.each do |r| 
   <%= r.username %>
      <% end %>