namespace com.training;

using {cuid} from '@sap/cds/common';

entity Course : cuid {
    Student : Association to many StudentCourse
                  on Student.Course = $self;
};

entity Student : cuid {
    Course : Association to many StudentCourse
                 on Course.Student = $self;
};

entity StudentCourse : cuid {
    Student : Association to Student;
    Course  : Association to Course;
};

entity Orders {
    ClientEmail  : String(65);
    FirstName    : String(30);
    LastName     : String(30);
    CreatedOn    : Date;
    Reviewed     : Boolean;
    Approved     : Boolean;
    Country_code : String(2);
    Status       : String(1);
}
