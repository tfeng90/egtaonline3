class GameScheduler < Scheduler
  include PatternBasedScheduler

  def profile_space
    return [] if invalid_role_partition?
    AssignmentFormatter.format_assignments(
      SubgameCreator.subgame_assignments(roles))
  end
end
