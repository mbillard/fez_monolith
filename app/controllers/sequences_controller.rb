class SequencesController < ApplicationController

  def index
    fetch_more_sequences
  end

  def matches
    fetch_matching_sequences
  end

  def update
    if params[:unconfirm]
      s = Sequence.find(params[:sequence_id])
      s.false_positive_count = (s.false_positive_count || 0) + 1
      s.save!

      fetch_matching_sequences

      render :action => :matches
    else
      if params[:match]
        s = Sequence.find(params[:sequence_id])
        s.match_count = (s.match_count || 0) + 1
        s.save!
      elsif params[:wrong]
        Sequence.where(:id => params[:sequence_ids].split(',')).each do |s|
          s.test_count += 1
          s.save!
        end
      end

      fetch_more_sequences

      render :action => :index
    end
  end

  def progress
  end

  private

  def fetch_more_sequences
    nb_sequences = 10

    # Get a random set of X consecutive sequences
    min_test_count = Sequence.minimum(:test_count)
    nb_least_tested = Sequence.where(:test_count => min_test_count).count - nb_sequences

    initial_sequence = Sequence.where(:test_count => min_test_count).find(:first, :offset => rand(nb_least_tested))
    @sequences = Sequence.where("id > ?", initial_sequence.id).limit(nb_sequences)

    @matching_count = Sequence.where("match_count IS NOT NULL AND match_count > 0 AND (false_positive_count <= match_count OR false_positive_count IS NULL)").count
  end

  def fetch_matching_sequences
    @sequences = Sequence.where("match_count IS NOT NULL AND match_count > 0 AND (false_positive_count <= match_count OR false_positive_count IS NULL)").order("MATCH_COUNT DESC").limit(10)
  end

end
