--
create trigger trg_Discussion_AddReply
on Discussion
after insert
as begin
    update Discussion
    set RepliesCount = isnull(RepliesCount, 0) + 1
    where DiscussionID in (select DiscussionID from inserted);
end;

insert into Discussion (ProblemID, AuthorID, Message) values (2, 1, N'New test reply');

select DiscussionID, ProblemID, AuthorID, Message, RepliesCount
from Discussion
order by DiscussionID desc;

--//////////////////////////////////////////////////////////////////////////////////////////

--
create trigger trg_Problem_Update
on Problem
after update
as begin
    update Problem
    set UpdatedAt = getdate()
    where ProblemID in (select ProblemID from inserted);
end;

update Problem
set Title = 'Modified problem title'
where ProblemID = 2;

select ProblemID, Title, UpdatedAt from Problem where ProblemID = 2;