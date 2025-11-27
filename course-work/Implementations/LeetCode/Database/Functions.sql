-- Функция RankUserAmongAll, която определя мястото на потребителя сред всички по общ брой успешни решения
create function dbo.RankUserAmongAll (@UserID int)
returns int as
begin
    declare @rank int;
    with Ranking as (
        select 
            u.UserID,
            row_number() over (
                order by coint(case when s.IsAccepted = 1 then 1 end) desc
            ) as Rank
        from [User] u
        left join Submission s on u.UserID = s.UserID
        group by u.UserID
    )
    select @rank = Rank
    from Ranking
    where UserID = @UserID;
    return isnull(@rank, 1);
end;

drop function RankUserAmongAll
select u.UserID, u.Username, dbo.RankUserAmongAll(2) as Rank
	from [User] u
	where u.UserID = 2;
SELECT * FROM UserRanking;

SELECT 
    u.UserID,
    u.Username,
    ISNULL(SUM(CASE WHEN s.IsAccepted = 1 THEN 1 ELSE 0 END), 0) AS SolvedProblems,
    ROW_NUMBER() OVER (
        ORDER BY SUM(CASE WHEN s.IsAccepted = 1 THEN 1 ELSE 0 END) DESC
    ) AS Rank
FROM [User] u
LEFT JOIN Submission s ON u.UserID = s.UserID
GROUP BY u.UserID, u.Username;


-- ///////////////////////////////////////////////////////////////////////////////////////////

-- Функция GetPredictedDifficulty, имитация на “machine-learning–подобен” анализ, който:
--	отчита исторически успех,
--	сложност на задачите,
--	процент приети решения.

create function dbo.GetPredictedDifficulty (@UserID int)
return nvarchar(20) as
begin
    declare 
        @AvgDifficulty float,
        @ErrorRate float,
        @AvgRuntime float,
        @Prediction nvarchar(20);
    select @AvgDifficulty = avg(
        case p.Difficulty
            when 'Easy' then 1
            when 'Medium' then 2
            when 'Hard' then 3
        end
    )
    from Submission s
    join Problem p on s.ProblemID = p.ProblemID
    where s.UserID = @UserID
      and s.IsAccepted = 1;

    if @AvgDifficulty is null
        return 'Easy';
    select @ErrorRate = 
        cast(sum(case when IsAccepted = 0 then 1 else 0 end) as float)
        / count(*) 
    from Submission
    where UserID = @UserID;

    select @AvgRuntime = avg(Runtime)
    from Submission
    where UserID = @UserID
      and IsAccepted = 1;

    if (@AvgDifficulty >= 2.5 and @ErrorRate < 0.20)
        set @Prediction = 'Hard';
    else if (@AvgDifficulty >= 1.8 and @ErrorRate < 0.45)
        set @Prediction = 'Medium';
    else
        set @Prediction = 'Easy';

    return @Prediction;
end;

select u.UserID, u.Username, dbo.GetPredictedDifficulty(u.UserID) as RecommendedDifficulty
from [User] u;



