xml.instruct!
xml.urlset(
  'xmlns'.to_sym => "http://www.sitemaps.org/schemas/sitemap/0.9",
  'xmlns:image'.to_sym => "http://www.google.com/schemas/sitemap-image/1.1"
) do
  @mains.each do |main|
    xml.url do
      xml.loc "/"
      xml.changefreq("monthly")
    end
  end
  @careers.each do |career|
    xml.url do
      xml.loc "#{career_url(career)}"
      xml.changefreq("weekly")
    end
  end
  @teams.each do |team|
    xml.url do
      xml.loc "#{team_url(team)}"
      xml.changefreq("weekly")
    end
  end
  @successes.each do |success|
    xml.url do
      xml.loc "#{success_url(success)}"
      xml.changefreq("monthly")
    end
  end
  @employees.each do |employee|
    xml.url do
      xml.loc "#{employee_url(employee)}"
      xml.changefreq("monthly")
    end
  end
  @events.each do |event|
    xml.url do
      xml.loc "#{event_url(event)}"
      xml.changefreq("monthly")
    end
  end
  @jobs.each do |job|
    xml.url do
      xml.loc "#{job_url(job)}"
      xml.changefreq("monthly")
    end
  end
  @practiceareas.each do |practicearea|
    xml.url do
      xml.loc "/practiceareas"
      xml.changefreq("monthly")
    end
  end
  @quotes.each do |quote|
    xml.url do
      xml.loc "#{quote_url(quote)}"
      xml.changefreq("monthly")
    end
  end
  @posts.each do |post|
    xml.url do
      xml.loc "#{post_url(post)}"
      xml.lastmod post.updated_at.strftime("%F")
      xml.changefreq("weekly")
    end
  end
end