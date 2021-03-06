# coding: utf-8
class OrderNotifier < ActionMailer::Base
  default from: 'Sam Ruby <hello.kenpark@gmail.com>'


  def received(order)
    @order = order
  
    mail(:to =>  order.email, :subject => 'Подтверждение заказа в Progmatic Store')
  end

  def shipped(order)
    @order = order
 
    mail(:to =>  order.email, :subject =>  'Заказ из Pragmatic Store отправлен')
  end
end
