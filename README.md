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


<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">
        <%= link_to "AlphaBlog", root_path, class: "navbar-brand", id:"logo" %>
        <button class="navbar-toggler-light d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <%= link_to "Home", root_path, class: "nav-link" %>
            </li>
            <li class="nav-item">
                <%= link_to "Our Bloggers", users_path, class: "nav-link" %>
            </li>
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Articles
            </a>
            <ul class="dropdown-menu">
                <%= link_to "Our Articles", articles_path, class: "dropdown-item"  %>
                <%= link_to "Create New Article", new_article_path, class: "dropdown-item" %>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
            </li>
            <% if logged_in? %>
                <li class="nav-item">
                    <%= link_to current_user.username, user_path(current_user), class: "nav-link" %>
                </li>
                <li class="nav-item">
                    <%= link_to 'Logout', logout_path, class: "nav-link", method: :delete %>
                </li>
            <% else %>
                <li class="nav-item">
                    <%= link_to 'Login', login_path, class: "nav-link" %>
                </li>
                <li class="nav-item">
                    <%= link_to 'Sign up', signup_path, class: "nav-link" %>
                </li>
            <% end %>
        </ul>
        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light" type="submit">Search</button>
        </form>
        </div>
    </div>
</nav>
