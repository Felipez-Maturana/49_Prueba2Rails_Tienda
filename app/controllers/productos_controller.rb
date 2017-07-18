class ProductosController < ApplicationController
	layout 'bootstrap'

  def index
  	@productos=Product.all
  	@productos=@productos.select {|p| p.name == params[:name]} if !params[:name].blank?

  	@productos=@productos.select {|p| p.price < params[:lessvalue].to_i } if !params[:lessvalue].blank?

  	@productos=@productos.select {|p| p.price > params[:greatervalue].to_i } if !params[:greatervalue].blank?
  end
end
