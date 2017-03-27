class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  # GET /documents.json
  def index
    if logged_in?
      @documents = Document.all
    else
      redirect_to home_path
    end
  end

  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to documents_path, notice: "Successfully created document."
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    if @document.update(document_params)
      redirect_to documents_path, notice: "Successfully updated document."
    else
      render action: 'edit'
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    redirect_to flavors_path, notice: "successfully removed document."
  end

  private
  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name)
  end
end
