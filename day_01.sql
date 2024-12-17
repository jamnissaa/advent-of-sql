
   SELECT children.name,
       wish_lists.wishes ->> 'first_choice' as  primary_wish,
       wish_lists.wishes ->> 'second_choice' as backup_wish,
       wish_lists.wishes #>> '{colors,0}' as favorite_color,
       json_array_length(wish_lists.wishes -> 'colors') as color_count,
       CASE toy_catalogue.difficulty_to_make 
         WHEN 1 THEN 'Simple Gift'
         WHEN 2 THEn ' Moderate Gift'
         ELSE 'Complex Gift'
       END AS gift_complexity,
       CASE toy_catalogue.category
         WHEN 'outdoor' THEN 'Outside Workshop'
         WHEN 'educational' THEn 'Learning Workshop'
         ELSE 'General Workshop'
       END AS workshop_assignment      
From wish_lists
INNER JOIN children ON wish_lists.child_id = children.child_id 
INNER JOIN toy_catalogue ON  (wish_lists.wishes ->> 'first_choice') = toy_catalogue.toy_name
ORDER BY children.name
LIMIT 5;
