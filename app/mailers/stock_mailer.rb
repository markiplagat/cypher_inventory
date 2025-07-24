class StockMailer < ApplicationMailer
  default from: 'markrutto12@gmail.com'

  def low_stock_alert(product)
    @product = product
    mail(
      to: 'admin@example.com', # Will change to {user.email}
      subject: "⚠️ Low Stock Alert: #{@product.name}"
    )
  end
end
