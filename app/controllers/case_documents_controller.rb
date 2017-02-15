class CaseDocumentsController < ApplicationController
  before_action :set_case_document, only: [:show, :edit, :update, :destroy]

  # GET /case_documents
  # GET /case_documents.json
  def index
    @case_documents = CaseDocument.all
  end

  # GET /case_documents/1
  # GET /case_documents/1.json
  def show
  end

  # GET /case_documents/new
  def new
    @case_document = CaseDocument.new
  end

  # GET /case_documents/1/edit
  def edit
  end

  # POST /case_documents
  # POST /case_documents.json
  def create
    @case_document = CaseDocument.new(case_document_params)

    respond_to do |format|
      if @case_document.save
        format.html { redirect_to @case_document, notice: 'Case document was successfully created.' }
        format.json { render :show, status: :created, location: @case_document }
      else
        format.html { render :new }
        format.json { render json: @case_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_documents/1
  # PATCH/PUT /case_documents/1.json
  def update
    respond_to do |format|
      if @case_document.update(case_document_params)
        format.html { redirect_to @case_document, notice: 'Case document was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_document }
      else
        format.html { render :edit }
        format.json { render json: @case_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_documents/1
  # DELETE /case_documents/1.json
  def destroy
    @case_document.destroy
    respond_to do |format|
      format.html { redirect_to case_documents_url, notice: 'Case document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_document
      @case_document = CaseDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_document_params
      params.require(:case_document).permit(:case_id, :document_id)
    end
end
