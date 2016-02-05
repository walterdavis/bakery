module ThingsHelper
  def counter
    pluralize( Thing.count, 'Thing' ) + '.'
  end
end
