set search_path to fashionista_app;

--create basic user roles

insert into user_roles (name) values ('basic_user');

--create new app users

insert into app_users (first_name, last_name, email, username, password, role_id)
values ('Meg', 'Griffen', 'mg@aol.com', 'megang', '@password', 1),
('Buffy', 'Summers', 'bs@aol.com', 'buffys', 'pa$$word', 1),
('Jane', 'Byers', 'jb@aol.com', 'janeb', 'pa!!word', 1);

--create some categories

insert into categories (name)
values ('Fall'), ('Winter'), ('Spring');

--create some pieces

insert into pieces (tops, pants, dresses, shoes, creator_id, category_id)
values ('long sleeved', 'boot cut jeans', 'maxi', 'sandals', 6, 3),
('crop', 'skinny jeans', 'mini dresses', 'sneakers', 7, 1),
('button ups', 'flare', 'cocktail', 'heels', 7, 4),
('tanks', 'shorts', 'strapless', 'mules', 8, 5),
('corsets', 'biker shorts', 'long sleeve', 'pumps', 6, 1);

--create a closet belonging to a user 

insert into closets (name, owner_id)
values ('Summer outfits', 7);

select * from pieces 

