class SequencesController < ApplicationController

  def index
    fetch_more_sequences
  end

  def update
    if params[:match]
      # todo
    elsif params[:wrong]
      Sequence.where(:id => params[:sequence_ids].split(',')).each do |s|
        s.test_count += 1
        s.save!
      end
    end

    fetch_more_sequences

    render :action => :index
  end

  private

  def fetch_more_sequences
    nb_sequences = 10

    # Get a random set of X consecutive sequences
    min_test_count = Sequence.minimum(:test_count)
    nb_least_tested = Sequence.where(:test_count => min_test_count).count - nb_sequences

    initial_sequence = Sequence.where(:test_count => min_test_count).find(:first, :offset => rand(nb_least_tested))
    @sequences = Sequence.where("id > ?", initial_sequence.id).limit(nb_sequences)
  end

end
