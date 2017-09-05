config.middleware.use(Rack::Tracker) do
    handler :facebook_pixel, { id: '734401866742189' }
  end
