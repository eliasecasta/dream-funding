Project name: Dream Funding

Table User

Name:string
email:string
password:string
icon:string

Table Transfer

AuthorId:integer/user:references (foreign key of the user doing the transfer to the Dream) so user:references
Name:string
Amount:integer
Dream:references
CreatedAt:date (viene por default)

Table Dream

name:string
money_objective:integer
icon:string (Image url)
user:references (Dream author)
