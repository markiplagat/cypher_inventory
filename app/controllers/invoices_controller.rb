class InvoicesController < ApplicationController
  before_action :set_invoice, only: %i[show edit update destroy]

  def index
    @invoices = Invoice.all.order(created_at: :desc)
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "invoice-#{@invoice.invoice_number}",
               template: "invoices/show.pdf.erb",
               layout: "pdf.html", # optional custom PDF layout
               disposition: "inline"
      end
    end
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.invoice_number ||= SecureRandom.hex(4).upcase
    if @invoice.save
      redirect_to @invoice, notice: "Invoice was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @invoice.update(invoice_params)
      redirect_to @invoice, notice: "Invoice was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @invoice.destroy
    redirect_to invoices_path, notice: "Invoice was successfully deleted."
  end

  private

  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  def invoice_params
    params.require(:invoice).permit(:customer_name, :total, :status, :due_date, :notes)
  end
end
