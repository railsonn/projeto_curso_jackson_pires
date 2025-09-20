class ChildrenController < ApplicationController
  before_action :set_child, only: %i[ show edit update destroy ]
  before_action :set_fathers, only: %i[ edit new update ]

  # GET /children or /children.json
  def index
    @children = Child.all
  end

  # GET /children/1 or /children/1.json
  def show
  end

  # GET /children/new
  def new
    @child = Child.new
  end

  # GET /children/1/edit
  def edit
  end

  # POST /children or /children.json
  def create
    @child = Child.new(child_params)

    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: "Child was successfully created." }
        format.json { render :show, status: :created, location: @child }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /children/1 or /children/1.json
  def update
    respond_to do |format|
      if @child.update(child_params)
        format.html { redirect_to @child, notice: "Child was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @child }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children/1 or /children/1.json
  def destroy
    @child.destroy!

    respond_to do |format|
      format.html { redirect_to children_path, notice: "Child was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child
      @child = Child.find(params.expect(:id))
    end

    def set_fathers
      @fathers = Father.all
    end

    # Only allow a list of trusted parameters through.
    def child_params
      params.expect(child: [ :name, :sex, :Father_id ])
    end
end
