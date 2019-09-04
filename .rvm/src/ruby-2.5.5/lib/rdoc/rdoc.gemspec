begin
  require_relative "lib/rdoc"
rescue LoadError
  # for Ruby repository
  require_relative "../rdoc"
end

Gem::Specification.new do |s|
  s.name = "rdoc"
  s.version = RDoc::VERSION
  s.date = "2017-12-24"

  s.authors = [
    "Eric Hodel",
    "Dave Thomas",
    "Phil Hagelberg",
    "Tony Strauss",
    "Zachary Scott",
    "Hiroshi SHIBATA",
    "ITOYANAGI Sakura"
  ]
  s.email = ["drbrain@segment7.net", "", "", "", "mail@zzak.io", "hsbt@ruby-lang.org", "aycabta@gmail.com"]

  s.summary = "RDoc produces HTML and command-line documentation for Ruby projects"
  s.description = <<-DESCRIPTION
RDoc produces HTML and command-line documentation for Ruby projects.
RDoc includes the +rdoc+ and +ri+ tools for generating and displaying documentation from the command-line.
  DESCRIPTION
  s.homepage = "https://ruby.github.io/rdoc"
  s.licenses = ["Ruby"]

  s.bindir = "exe"
  s.executables = ["rdoc", "ri"]
  s.require_paths = ["lib"]
  # for ruby core repository. It was generated by `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.files = [".document", ".gitignore", ".travis.yml", "CONTRIBUTING.rdoc", "CVE-2013-0256.rdoc", "ExampleMarkdown.md", "ExampleRDoc.rdoc", "Gemfile", "History.rdoc", "LEGAL.rdoc", "LICENSE.rdoc", "README.rdoc", "RI.rdoc", "Rakefile", "TODO.rdoc", "appveyor.yml", "bin/console", "bin/setup", "exe/rdoc", "exe/ri", "lib/rdoc.rb", "lib/rdoc/alias.rb", "lib/rdoc/anon_class.rb", "lib/rdoc/any_method.rb", "lib/rdoc/attr.rb", "lib/rdoc/class_module.rb", "lib/rdoc/code_object.rb", "lib/rdoc/code_objects.rb", "lib/rdoc/comment.rb", "lib/rdoc/constant.rb", "lib/rdoc/context.rb", "lib/rdoc/context/section.rb", "lib/rdoc/cross_reference.rb", "lib/rdoc/encoding.rb", "lib/rdoc/erb_partial.rb", "lib/rdoc/erbio.rb", "lib/rdoc/extend.rb", "lib/rdoc/generator.rb", "lib/rdoc/generator/darkfish.rb", "lib/rdoc/generator/json_index.rb", "lib/rdoc/generator/markup.rb", "lib/rdoc/generator/pot.rb", "lib/rdoc/generator/pot/message_extractor.rb", "lib/rdoc/generator/pot/po.rb", "lib/rdoc/generator/pot/po_entry.rb", "lib/rdoc/generator/ri.rb", "lib/rdoc/generator/template/darkfish/.document", "lib/rdoc/generator/template/darkfish/_footer.rhtml", "lib/rdoc/generator/template/darkfish/_head.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_VCS_info.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_classes.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_extends.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_in_files.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_includes.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_installed.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_methods.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_navigation.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_pages.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_parent.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_search.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_sections.rhtml", "lib/rdoc/generator/template/darkfish/_sidebar_table_of_contents.rhtml", "lib/rdoc/generator/template/darkfish/class.rhtml", "lib/rdoc/generator/template/darkfish/css/fonts.css", "lib/rdoc/generator/template/darkfish/css/rdoc.css", "lib/rdoc/generator/template/darkfish/fonts/Lato-Light.ttf", "lib/rdoc/generator/template/darkfish/fonts/Lato-LightItalic.ttf", "lib/rdoc/generator/template/darkfish/fonts/Lato-Regular.ttf", "lib/rdoc/generator/template/darkfish/fonts/Lato-RegularItalic.ttf", "lib/rdoc/generator/template/darkfish/fonts/SourceCodePro-Bold.ttf", "lib/rdoc/generator/template/darkfish/fonts/SourceCodePro-Regular.ttf", "lib/rdoc/generator/template/darkfish/images/add.png", "lib/rdoc/generator/template/darkfish/images/arrow_up.png", "lib/rdoc/generator/template/darkfish/images/brick.png", "lib/rdoc/generator/template/darkfish/images/brick_link.png", "lib/rdoc/generator/template/darkfish/images/bug.png", "lib/rdoc/generator/template/darkfish/images/bullet_black.png", "lib/rdoc/generator/template/darkfish/images/bullet_toggle_minus.png", "lib/rdoc/generator/template/darkfish/images/bullet_toggle_plus.png", "lib/rdoc/generator/template/darkfish/images/date.png", "lib/rdoc/generator/template/darkfish/images/delete.png", "lib/rdoc/generator/template/darkfish/images/find.png", "lib/rdoc/generator/template/darkfish/images/loadingAnimation.gif", "lib/rdoc/generator/template/darkfish/images/macFFBgHack.png", "lib/rdoc/generator/template/darkfish/images/package.png", "lib/rdoc/generator/template/darkfish/images/page_green.png", "lib/rdoc/generator/template/darkfish/images/page_white_text.png", "lib/rdoc/generator/template/darkfish/images/page_white_width.png", "lib/rdoc/generator/template/darkfish/images/plugin.png", "lib/rdoc/generator/template/darkfish/images/ruby.png", "lib/rdoc/generator/template/darkfish/images/tag_blue.png", "lib/rdoc/generator/template/darkfish/images/tag_green.png", "lib/rdoc/generator/template/darkfish/images/transparent.png", "lib/rdoc/generator/template/darkfish/images/wrench.png", "lib/rdoc/generator/template/darkfish/images/wrench_orange.png", "lib/rdoc/generator/template/darkfish/images/zoom.png", "lib/rdoc/generator/template/darkfish/index.rhtml", "lib/rdoc/generator/template/darkfish/js/darkfish.js", "lib/rdoc/generator/template/darkfish/js/jquery.js", "lib/rdoc/generator/template/darkfish/js/search.js", "lib/rdoc/generator/template/darkfish/page.rhtml", "lib/rdoc/generator/template/darkfish/servlet_not_found.rhtml", "lib/rdoc/generator/template/darkfish/servlet_root.rhtml", "lib/rdoc/generator/template/darkfish/table_of_contents.rhtml", "lib/rdoc/generator/template/json_index/.document", "lib/rdoc/generator/template/json_index/js/navigation.js", "lib/rdoc/generator/template/json_index/js/searcher.js", "lib/rdoc/ghost_method.rb", "lib/rdoc/i18n.rb", "lib/rdoc/i18n/locale.rb", "lib/rdoc/i18n/text.rb", "lib/rdoc/include.rb", "lib/rdoc/known_classes.rb", "lib/rdoc/markdown.kpeg", "lib/rdoc/markdown/entities.rb", "lib/rdoc/markdown/literals.kpeg", "lib/rdoc/markup.rb", "lib/rdoc/markup/attr_changer.rb", "lib/rdoc/markup/attr_span.rb", "lib/rdoc/markup/attribute_manager.rb", "lib/rdoc/markup/attributes.rb", "lib/rdoc/markup/blank_line.rb", "lib/rdoc/markup/block_quote.rb", "lib/rdoc/markup/document.rb", "lib/rdoc/markup/formatter.rb", "lib/rdoc/markup/formatter_test_case.rb", "lib/rdoc/markup/hard_break.rb", "lib/rdoc/markup/heading.rb", "lib/rdoc/markup/include.rb", "lib/rdoc/markup/indented_paragraph.rb", "lib/rdoc/markup/inline.rb", "lib/rdoc/markup/list.rb", "lib/rdoc/markup/list_item.rb", "lib/rdoc/markup/paragraph.rb", "lib/rdoc/markup/parser.rb", "lib/rdoc/markup/pre_process.rb", "lib/rdoc/markup/raw.rb", "lib/rdoc/markup/rule.rb", "lib/rdoc/markup/special.rb", "lib/rdoc/markup/text_formatter_test_case.rb", "lib/rdoc/markup/to_ansi.rb", "lib/rdoc/markup/to_bs.rb", "lib/rdoc/markup/to_html.rb", "lib/rdoc/markup/to_html_crossref.rb", "lib/rdoc/markup/to_html_snippet.rb", "lib/rdoc/markup/to_joined_paragraph.rb", "lib/rdoc/markup/to_label.rb", "lib/rdoc/markup/to_markdown.rb", "lib/rdoc/markup/to_rdoc.rb", "lib/rdoc/markup/to_table_of_contents.rb", "lib/rdoc/markup/to_test.rb", "lib/rdoc/markup/to_tt_only.rb", "lib/rdoc/markup/verbatim.rb", "lib/rdoc/meta_method.rb", "lib/rdoc/method_attr.rb", "lib/rdoc/mixin.rb", "lib/rdoc/normal_class.rb", "lib/rdoc/normal_module.rb", "lib/rdoc/options.rb", "lib/rdoc/parser.rb", "lib/rdoc/parser/c.rb", "lib/rdoc/parser/changelog.rb", "lib/rdoc/parser/markdown.rb", "lib/rdoc/parser/rd.rb", "lib/rdoc/parser/ripper_state_lex.rb", "lib/rdoc/parser/ruby.rb", "lib/rdoc/parser/ruby_tools.rb", "lib/rdoc/parser/simple.rb", "lib/rdoc/parser/text.rb", "lib/rdoc/rd.rb", "lib/rdoc/rd/block_parser.ry", "lib/rdoc/rd/inline.rb", "lib/rdoc/rd/inline_parser.ry", "lib/rdoc/rdoc.rb", "lib/rdoc/require.rb", "lib/rdoc/ri.rb", "lib/rdoc/ri/driver.rb", "lib/rdoc/ri/formatter.rb", "lib/rdoc/ri/paths.rb", "lib/rdoc/ri/store.rb", "lib/rdoc/ri/task.rb", "lib/rdoc/rubygems_hook.rb", "lib/rdoc/servlet.rb", "lib/rdoc/single_class.rb", "lib/rdoc/stats.rb", "lib/rdoc/stats/normal.rb", "lib/rdoc/stats/quiet.rb", "lib/rdoc/stats/verbose.rb", "lib/rdoc/store.rb", "lib/rdoc/task.rb", "lib/rdoc/test_case.rb", "lib/rdoc/text.rb", "lib/rdoc/token_stream.rb", "lib/rdoc/tom_doc.rb", "lib/rdoc/top_level.rb", "rdoc.gemspec"]
  # files from .gitignore
  s.files << "lib/rdoc/rd/block_parser.rb" << "lib/rdoc/rd/inline_parser.rb" << "lib/rdoc/markdown.rb" << "lib/rdoc/markdown/literals.rb"

  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files += %w[
    CVE-2013-0256.rdoc
    CONTRIBUTING.rdoc
    ExampleMarkdown.md
    ExampleRDoc.rdoc
    History.rdoc
    LEGAL.rdoc
    LICENSE.rdoc
    README.rdoc
    RI.rdoc
    TODO.rdoc
  ]

  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2")
  s.rubygems_version = "2.5.2"
  s.required_rubygems_version = Gem::Requirement.new(">= 2.2")

  s.add_development_dependency("rake")
  s.add_development_dependency("racc", "> 1.4.10")
  s.add_development_dependency("kpeg")
  s.add_development_dependency("minitest", "~> 4")
  s.add_development_dependency("json")
end
