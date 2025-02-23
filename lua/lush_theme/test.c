#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Person_t {
    char *name;
    char *surname;
    int age;
    struct Person_t *mother;
    struct Person_t *father;
} Person;

int check_name(char *name) {
    if (!name || name[0] == '\0') {
        return 0;
    }
    return 1;
}

int check_age(int age) {
    if (age < 0 || age > 200) {
        return 0;
    }
    return 1;
}

Person *create_person(char *name, char *surname, int age, Person *mother,
                      Person *father) {
    if (!check_name(name) || !check_name(surname))
        return NULL;

    if (!check_age(age))
        return NULL;

    Person *new_person = (Person *)malloc(sizeof(Person));
    if (!new_person) {
        return NULL;
    }

    new_person->name = (char *)malloc(strlen(name) + 1);
    new_person->surname = (char *)malloc(strlen(surname) + 1);
    if (!new_person->name || !new_person->surname) {
        free(new_person);
        return NULL;
    }

    strcpy(new_person->name, name);
    strcpy(new_person->surname, surname);

    new_person->age = age;
    new_person->mother = mother;
    new_person->father = father;

    return new_person;
}

void delete_person(Person *person) {
    free(person->name);
    free(person->surname);
    free(person);
}

int main(int argc, char **argv) {
    Person *magomed = create_person("Magomged", "Abbasov", 21, NULL, NULL);
    printf("%s\n", magomed->name);
    delete_person(magomed);
    return 0;
}
