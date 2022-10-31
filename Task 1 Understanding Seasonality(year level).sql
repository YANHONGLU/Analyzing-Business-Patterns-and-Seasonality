use mavenfuzzyfactory;
select year(website_sessions.created_at) as yr, month(website_sessions.created_at) as mo, 
       count(distinct website_sessions.website_session_id) as sessions,count(distinct orders.order_id) as orders
from website_sessions 
left join orders 
on website_sessions.website_session_id=orders.website_session_id 
where website_sessions.created_at<'2013-01-01'
group by 1,2;