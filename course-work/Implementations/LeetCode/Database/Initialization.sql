create database LeetCodeDb

use LeetCodeDb 

create table [User] (
	UserID int identity primary key, 
	Username nvarchar(100) not null, 
	Email nvarchar(200) not null unique, 
	PasswordHash nvarchar(500) not null, 
	JoinDate datetime default getdate(), 
	Location nvarchar(200),
	ProfilePicURL nvarchar(200),
	Birthday date,
	Summary nvarchar(max),
	Experience nvarchar(max),
	Role nvarchar(50), 
	isPremium bit default 0
);

create table UserSkill (
	SkillID int identity primary key, 
	UserID int not null, 
	SkillName nvarchar(100) not null, 
	FOREIGN KEY(UserID) references [User](UserID)
);

create table TasksSet (
	SetID int identity primary key, 
	Title nvarchar(150) not null, 
	Description nvarchar(max) not null, 
	DifficultyLevel nvarchar(50) not null, 
	CreatedAt datetime default getdate()
);

create table Link (
	LinkID int identity primary key, 
	UserID int not null, 
	GitHub nvarchar(150),
	LinkedIn nvarchar(150),
	Google nvarchar(150),
	FOREIGN KEY(UserID) references [User](UserID)
); 

create table ProgrammingLanguage (
	LanguageID int identity primary key, 
	Name nvarchar(50) not null, 
	Version float not null
);

create table Tag (
	TagID int identity primary key, 
	Name nvarchar(50) not null, 
	Description nvarchar(max) not null, 
);

create table Problem (
	ProblemID int identity primary key, 
	Title nvarchar(200) not null, 
	Description nvarchar(max) not null, 
	Difficulty nvarchar(50) not null, 
	Constraints nvarchar(max),
	ExampleInput nvarchar(max),
	ExampleOutput nvarchar(max),
	CreatedAt datetime default getdate(),
	UpdatedAt datetime null
);
create table Submission (
	SublissionID int identity primary key, 
	UserID int not null, 
	ProblemID int not null, 
	LanguageID int not null, 
	Code nvarchar(max) not null,
	Result nvarchar(50) not null,
	Runtime float, 
	MemoryUsage float, 
	IsAccepted bit,
	SubmittedAt datetime default getdate(), 
	foreign key (UserID) references [User](UserID),
	foreign key (ProblemID) references Problem(ProblemID),
	foreign key (LanguageID) references ProgrammingLanguage(LanguageID)
);


create table Discussion (
	DiscussionID int identity primary key,
	ProblemID int not null, 
	AuthorID int not null, 
	Message nvarchar(max) not null,
	PostedAt datetime default getdate(), 
	EditedAt datetime null, 
	RepliesCount int null,
	foreign key (ProblemID) references Problem(ProblemID),
	foreign key (AuthorID) references [User](UserID),
);

create table [Notification] (
	NotificationID int identity primary key, 
	UserID int not null, 
	Message nvarchar(max) not null,
	Type nvarchar(50) not null, 
	IsRead bit default 0,
	CreatedAt datetime default getdate(), 
	FOREIGN KEY(UserID) references [User](UserID)
);

create table ProblemTag (
	ProblemID int not null, 
	TagID int not null, 
	primary key(ProblemID,TagID),
	foreign key (ProblemID) references Problem(ProblemID),
	foreign key (TagID) references Tag(TagID),
);

create table TestCase (
	TestCaseID int identity primary key, 
	ProblemID int not null, 
	InputData nvarchar(max) not null,
	ExpectedOutput nvarchar(max) not null,
	foreign key (ProblemID) references Problem(ProblemID)
);
create table ProblemTasksSet (
	ProblemID int not null,
	SetID int not null, 
	primary key(SetID, ProblemID),
	FOREIGN KEY(ProblemID) references Problem(ProblemID),
	foreign key (SetID) references TasksSet(SetID)
);


create table UserTasksSet (
	UserID int not null,
	SetID int not null, 
	primary key(UserID, SetID),
	FOREIGN KEY(UserID) references [User](UserID),
	foreign key (SetID) references TasksSet(SetID)
);
