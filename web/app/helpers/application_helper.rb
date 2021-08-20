module ApplicationHelper #関連したメソッドを一つにまとめる方法の一種でincludeメソッドでモジュールを読み込める
    #つまり，このメソッドは自動的にすべてのメソッドで読み込む事ができる
    def full_title(page_title = '')
        base_title = "Ruby on Rails Tutorial Sample App"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
end
