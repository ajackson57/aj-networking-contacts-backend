class ContactsController < ProtectedController
  before_action :set_contact, only: [:show, :update, :destroy]

  # GET /contacts
  def index
    # @contacts = Contact.all
    @contacts = current_user.contacts
    render json: @contacts
  end

  # GET /contacts/1
  def show
    render json: @contact
  end

  # POST /contacts
  def create
    @contact = current_user.contacts.build(contact_params)

    if @contact.valid?
      if @contact.save
        render json: @contact, status: :created, location: @contact
      else
        render json: @contact.errors, status: :unprocessable_entity
      end
    else
      render json: { message: 'blank conatct inforamtion', errors: @contact.errors }, status: :bad_request
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = current_user.contacts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_params
      params.require(:contact).permit(:first_name,
                                      :last_name,
                                      :email,
                                      :company,
                                      :position)
    end
end
