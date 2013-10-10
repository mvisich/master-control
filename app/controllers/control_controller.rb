class ControlController < ApplicationController
  # # GET /controls
  # # GET /controls.json
  # def index
  #   @controls = Control.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @controls }
  #   end
  # end

  # # GET /controls/1
  # # GET /controls/1.json
  # def show
  #   @control = Control.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @control }
  #   end
  # end

  # # GET /controls/new
  # # GET /controls/new.json
  # def new
  #   @control = Control.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @control }
  #   end
  # end

  # # GET /controls/1/edit
  # def edit
  #   @control = Control.find(params[:id])
  # end

  # # POST /controls
  # # POST /controls.json
  # def create
  #   @control = Control.new(params[:control])

  #   respond_to do |format|
  #     if @control.save
  #       format.html { redirect_to @control, notice: 'Control was successfully created.' }
  #       format.json { render json: @control, status: :created, location: @control }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @control.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  #POST
  
  #control.reboot_call(system_name)

  def make_reboot_call_linux
    linux = Linux.new
    reboot_call = linux.reboot_call(params[:system_name])

    respond_to do |format|
      if reboot_call
        format.json { render json: reboot_call, notice: 'System rebooted successfully.' } 
      else
        format.json { render json: reboot_call.errors, status: :unprocessable_entity}
      end
    end
  end

  def make_reboot_call_windows
    windows = Windows.new
    reboot_call = windows.reboot_call(params[:system_name])

    respond_to do |format|
      if reboot_call
        format.json { render json: reboot_call, notice: 'System rebooted successfully.' } 
      else
        format.json { render json: reboot_call.errors, status: :unprocessable_entity}
      end
    end
  end

  def make_service_call_linux
    linux = Linux.new
    service_call = linux.service_call(params[:system_name,:service_name,:command])
    respond_to do |format|
      if reboot_call
        format.json { render json: service_call, notice: 'System rebooted successfully.' } 
      else
        format.json { render json: service_call.errors, status: :unprocessable_entity}
      end
    end
  end

  def make_service_call_windows
    windows = Windows.new
    service_call = windows.service_call(params[:system_name,:service_name,:command])
    respond_to do |format|
      if reboot_call
        format.json { render json: service_call, notice: 'System rebooted successfully.' } 
      else
        format.json { render json: service_call.errors, status: :unprocessable_entity}
      end
    end
  end

  def make_chef_call_linux
    linux = Linux.new
    chef_call = linux.chef_call(params[:system_name])
    respond_to do |format|
      if chef_call
        format.json { render json: chef_call, notice: 'System rebooted successfully.' } 
      else
        format.json { render chef_call.errors, status: :unprocessable_entity}
      end
    end
  end

  def make_chef_call_windows
    windows = Windows.new
    chef_call = windows.chef_call(params[:system_name])
    respond_to do |format|
      if chef_call
        format.json { render json: chef_call, notice: 'System rebooted successfully.' } 
      else
        format.json { render chef_call.errors, status: :unprocessable_entity}
      end
    end
  end

  # PUT /controls/1
  # # PUT /controls/1.json
  # def update
  #   @control = Control.find(params[:id])

  #   respond_to do |format|
  #     if @control.update_attributes(params[:control])
  #       format.html { redirect_to @control, notice: 'Control was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @control.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /controls/1
  # # DELETE /controls/1.json
  # def destroy
  #   @control = Control.find(params[:id])
  #   @control.destroy

  #   respond_to do |format|
  #     format.html { redirect_to controls_url }
  #     format.json { head :no_content }
  #   end
  # end
end
