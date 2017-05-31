# README

* simple Bulletin with time scaduling and admin verification

+ Mainly two interface: user and admin 
    + Before you see the titles and contents of bulletin, you need to migrate the model and create an user account like the following to login as admin. 
    ![](https://i.imgur.com/hiaZMoY.png)

    + Now you can get into /user , and then enter the username and password into the form to login. 
    ![](https://i.imgur.com/XWmjdpB.png)
 
+ Extra features
    + Identity verification: 
        + User(/user): you can see the titles and contents of the whole bulletin, but you cannot edit,delete,create. 
        + Admin(/secret): In the admin page, you can do Create, Read, Update, Delete operations(CRUD) on those datas in the database. 
        + Identity verification is done by using sessionID. 
 
 
    + Time scaduling: 
        + In user page, you only can see the titles and contents of bulletin before today. 
        + In admin page, you can create newest information and updating information at any time. 
 
