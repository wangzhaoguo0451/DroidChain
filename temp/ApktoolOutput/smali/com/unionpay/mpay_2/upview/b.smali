.class public final Lcom/unionpay/mpay_2/upview/b;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Landroid/os/Handler;

.field private b:Landroid/webkit/WebSettings;

.field private c:Lcom/unionpay/mpay_2/upview/b$a;

.field private d:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mpay_2/upview/b$a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->b:Landroid/webkit/WebSettings;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->c:Lcom/unionpay/mpay_2/upview/b$a;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->d:Ljava/util/Timer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/unionpay/mpay_2/upview/b;->c:Lcom/unionpay/mpay_2/upview/b$a;

    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/b;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->b:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->b:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/unionpay/mpay_2/upview/b$b;

    invoke-direct {v0, p0, v2}, Lcom/unionpay/mpay_2/upview/b$b;-><init>(Lcom/unionpay/mpay_2/upview/b;B)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcey;

    invoke-direct {v0, p0, v2}, Lcey;-><init>(Lcom/unionpay/mpay_2/upview/b;B)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay_2/upview/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/mpay_2/upview/b;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mpay_2/upview/b;->d:Ljava/util/Timer;

    return-object p1
.end method

.method private final a()V
    .locals 4

    const-string v0, "<div align=\"center\">%s</div>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lccg;->ab:Lccg;

    iget-object v3, v3, Lccg;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {p0, v0, v1, v2}, Lcom/unionpay/mpay_2/upview/b;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/unionpay/mpay_2/upview/b;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->d:Ljava/util/Timer;

    return-object v0
.end method

.method public static synthetic c(Lcom/unionpay/mpay_2/upview/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mpay_2/upview/b;->a()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->c:Lcom/unionpay/mpay_2/upview/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->c:Lcom/unionpay/mpay_2/upview/b$a;

    invoke-interface {v0}, Lcom/unionpay/mpay_2/upview/b$a;->m()V

    :cond_1
    const-string v0, ""

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/b;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/unionpay/mpay_2/upview/b;->a()V

    :pswitch_2
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->c:Lcom/unionpay/mpay_2/upview/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b;->c:Lcom/unionpay/mpay_2/upview/b$a;

    invoke-interface {v0}, Lcom/unionpay/mpay_2/upview/b$a;->n()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
