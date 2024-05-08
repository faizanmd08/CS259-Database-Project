use dbms_project;
ALTER TABLE page2
ADD FOREIGN KEY (user_id) REFERENCES user_login_infopage2(user_id);
ALTER TABLE page3
ADD FOREIGN KEY (user_id) REFERENCES user_login_info(user_id);
ALTER TABLE page4
ADD FOREIGN KEY (user_id) REFERENCES user_login_info(user_id);
ALTER TABLE page5
ADD FOREIGN KEY (user_id) REFERENCES user_login_info(user_id);
ALTER TABLE page6
ADD FOREIGN KEY (user_id) REFERENCES user_login_info(user_id);
ALTER TABLE page7
ADD FOREIGN KEY (user_id) REFERENCES user_login_info(user_id);