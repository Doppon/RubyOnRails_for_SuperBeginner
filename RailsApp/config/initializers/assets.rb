# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# 読書カードアプリ用の設定
Rails.application.config.assets.precompile += %w( cards.js cards.css )

# people用の設定
Rails.application.config.assets.precompile += %w( people.js people.css )

# messages用の設定
Rails.application.config.assets.precompile += %w( messages.js messages.css )

# blog用の各設定
Rails.application.config.assets.precompile += %w( blogconfigs.js blogconfigs.css )
Rails.application.config.assets.precompile += %w( bloggenres.js bloggenres.css )
Rails.application.config.assets.precompile += %w( blogposts.js blogposts.css )
Rails.application.config.assets.precompile += %w( blogs.js blogs.css )

# ブログ全体のスタイル
Rails.application.config.assets.precompile += %w( gray.css )
