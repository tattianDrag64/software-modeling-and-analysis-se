-- филтър по трудност
create procedure GetProblemsByDifficulty
    @Difficulty nvarchar(50)
as begin
    select ProblemID, Title, Difficulty, CreatedAt
    from Problem where Difficulty = @Difficulty;
end;

exec GetProblemsByDifficulty @Difficulty = 'Hard';


-- /////////////////////////////////////////////////////////////////////

-- добавяне на решение
create procedure AddSubmission
    @UserID int, @ProblemID int, @LanguageID int, @Code nvarchar(max)
as begin
    insert into Submission (UserID, ProblemID, LanguageID, Code, Result, IsAccepted)
    values (@UserID, @ProblemID, @LanguageID, @Code, 'Pending', 0);
end;

exec AddSubmission 
    @UserID = 1,
    @ProblemID = 2,
    @LanguageID = 1,
    @Code = N'print("Hello")';

select * from Submission order by SublissionID desc;
