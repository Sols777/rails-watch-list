module ApplicationHelper

   def cloudinary_pic(list)
     if list.photo.attached?
      cl_image_path list.photo.key, height: 300, width: 400, crop: :fill
     else
      image_path 'https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', height: 300, width: 400, crop: :fill
     end

   end
end
