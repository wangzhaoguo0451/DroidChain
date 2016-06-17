.class public Lcom/alipay/android/mini/window/sdk/MiniWebActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/ProgressBar;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Ljava/util/Map;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    .line 46
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Landroid/view/View;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Z

    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a()Z
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const-string v0, "mini_webView_frame"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    .line 107
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    const/16 v3, 0x1a0a

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    const-string v3, "mini_webview"

    new-array v4, v1, [I

    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getId()I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "mini_webview_back"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    const-string v3, "mini_webview_back"

    .line 113
    new-array v4, v1, [I

    const-string v5, "mini_webview_back"

    invoke-static {v5}, Lg;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 112
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "mini_webview_forward"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    const-string v3, "mini_webview_forward"

    .line 118
    new-array v4, v1, [I

    const-string v5, "mini_webview_forward"

    invoke-static {v5}, Lg;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 117
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "mini_webview_refresh"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    const-string v3, "mini_webview_refresh"

    .line 123
    new-array v4, v1, [I

    const-string v5, "mini_webview_refresh"

    invoke-static {v5}, Lg;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 122
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "mini_web_title"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/TextView;

    .line 125
    const-string v0, "mini_web_logo"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    const-string v3, "mini_web_logo"

    .line 136
    new-array v4, v1, [I

    const-string v5, "mini_web_logo"

    invoke-static {v5}, Lg;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 135
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    const-string v3, "mini_web_title"

    .line 138
    new-array v4, v1, [I

    const-string v5, "mini_web_title"

    invoke-static {v5}, Lg;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 137
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "mini_web_ProgressBar_loading"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    .line 142
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 143
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 146
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 148
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 150
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lyc;

    invoke-direct {v2}, Lyc;-><init>()V

    .line 152
    const-string v3, "local_obj"

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 154
    invoke-static {}, Lack;->z()Lack;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 154
    iget-object v4, v2, Lack;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ladd;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lg;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")(sdk android)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lack;->a:Ljava/lang/String;

    :cond_0
    iget-object v2, v2, Lack;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 156
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 159
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 162
    const-string v2, "setDomStorageEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 167
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/u;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/sdk/u;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Laag;

    invoke-direct {v2, p0}, Laag;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/widget/ImageView;

    new-instance v2, Laah;

    invoke-direct {v2, p0}, Laah;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/ImageView;

    new-instance v2, Laai;

    invoke-direct {v2, p0}, Laai;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    new-instance v2, Laaj;

    invoke-direct {v2, p0}, Laaj;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 233
    const-string v2, "removeJavascriptInterface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 232
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_3

    .line 235
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 236
    const-string v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    .line 235
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    move v0, v1

    .line 241
    :goto_3
    return v0

    .line 101
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_3

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 239
    :catch_1
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic b(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic c(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic d(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-static {}, Lack;->z()Lack;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lade;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 67
    const-string v0, "mini_web_view"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    .line 72
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_mcashier"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Z

    .line 74
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a()Z

    move-result v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->finish()V

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-static {}, Labp;->a()Labp;

    move-result-object v0

    .line 86
    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string v5, "mini-webview"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    .line 87
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    aput-object v4, v3, v1

    .line 85
    invoke-virtual {v0, v2, v3}, Labp;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 248
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 255
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 256
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a:Landroid/webkit/WebView;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/widget/ImageView;

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/ImageView;

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    .line 270
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Z

    if-eqz v0, :cond_5

    .line 271
    sget-object v1, Lwr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 274
    return-void

    .line 271
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
