
<div class="container">
  <%= form_for :session,{url: session_path, html:{class:"form-signin"}} do |f| %>
    <h2 class="form-signin-heading">Please Sign In</h2>
    <%= f.text_field :email, placeholder: "email", class:"input-block-level" %>
    <%= f.password_field :password, placeholder: "password", class:"input-block-level" %>
      <div class="checkbox">
        <label>A
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
    <%= f.submit "Log In", class:"btn btn-large btn-primary" %>
  <% end %>
</div> 

 