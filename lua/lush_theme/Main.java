
public class Main {
    public static void main(String[] args) {
        User user = new User("somed", "example@gmail.com", "example");
        User user2 = new User("dikiy", "example@gmail.com", "example");
        user.sayHelloTo(user);
        user.sayHelloTo(user2);
    }
}

class User {
    private String username;
    private String email;
    private String password;

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public void sayHelloTo(User user) {
        if (user == this) {
            System.out.println("Hello... myself???");
        } else {
            System.out.println("Hello, " + user.getUsername());
        }
    }

    public String getUsername() {
        return username;
    }
}
