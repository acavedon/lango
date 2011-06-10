class Admin::NotesController < AdministrationController
  
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(params[:note])
    if @note.save
      redirect_to [:admin,@note], notice: 'Note was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @note = Note.find(params[:id])

    if @note.update_attributes(params[:note])
      redirect_to [:admin,@note], notice: 'Note was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to admin_notes_url
  end
end
