class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]
  #access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all
  access [:responsable] => [:index, :show, :new, :create, :edit, :update, {except: [:destroy]}],[:president] => [:index, :show, :new, :create, :edit, :update, :destroy], [:user] => [:index, :show, {except: [:new, :create, :edit, :update, :destroy]}], site_admin: :all
  # GET /docs
  def index
    @docs = Doc.all
  end

  # GET /docs/1
  def show
  end

  # GET /docs/new
  def new
    @doc = Doc.new
  end

  # GET /docs/1/edit
  def edit
  end

  # POST /docs
  def create
    @doc = Doc.new(doc_params)

    #if !@doc.image.attached?
    #  @msg = 'You should upload a Document.'
    #  render :new
    #else
      if @doc.save
        redirect_to @doc, notice: 'Doc was successfully created.'
      else
        render :new
      end
    #end
  end

  # PATCH/PUT /docs/1
  def update
    if @doc.update(doc_params)
      redirect_to @doc, notice: 'Doc was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /docs/1
  def destroy
    @doc.destroy
    redirect_to docs_url, notice: 'Doc was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc
      @doc = Doc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doc_params
      params.require(:doc).permit(:name, :image, :user_id)
    end
end
