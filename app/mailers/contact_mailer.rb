class ContactMailer < ApplicationMailer
def contact_mail(blog)
 @blog = blog

 mail to: "tha1225.1010@gmail.com", subject: "お問い合わせの確認メール"
end

end
