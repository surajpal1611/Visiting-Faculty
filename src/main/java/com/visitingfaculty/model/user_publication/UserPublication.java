package com.visitingfaculty.model.user_publication;

public class UserPublication {

    private String role;
    private String no_of_authors;
    private String book_title;
    private String publisher;
    private String year_of_publication;
    private String url_path;

    public UserPublication() {
    }

    public UserPublication(String role, String no_of_authors, String book_title, String publisher,
            String year_of_publication, String url_path) {
        this.role = role;
        this.no_of_authors = no_of_authors;
        this.book_title = book_title;
        this.publisher = publisher;
        this.year_of_publication = year_of_publication;
        this.url_path = url_path;
    }

    @Override
    public String toString() {
        return "UserPublication [book_title=" + book_title + ", no_of_authors=" + no_of_authors + ", publisher="
                + publisher + ", role=" + role + ", url_path=" + url_path + ", year_of_publication="
                + year_of_publication + "]";
    }
    
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    public String getNo_of_authors() {
        return no_of_authors;
    }
    public void setNo_of_authors(String no_of_authors) {
        this.no_of_authors = no_of_authors;
    }
    public String getBook_title() {
        return book_title;
    }
    public void setBook_title(String book_title) {
        this.book_title = book_title;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public String getYear_of_publication() {
        return year_of_publication;
    }
    public void setYear_of_publication(String year_of_publication) {
        this.year_of_publication = year_of_publication;
    }
    public String getUrl_path() {
        return url_path;
    }
    public void setUrl_path(String url_path) {
        this.url_path = url_path;
    }
    
}
