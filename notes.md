  <select name="wine_id">
    <%= @wines.each do |wine| %>
      <option value="<%= wine.id %>"><%= wine.name %> <%= wine.producer.name %></option>
    <% end %>
  </select>