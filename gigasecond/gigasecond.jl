using Dates

function add_gigasecond(date::DateTime)
    gigasecond = Dates.Second(1e9)
    date + gigasecond
end
