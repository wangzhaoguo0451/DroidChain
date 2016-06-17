.class final Lcez;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Landroid/webkit/WebView;

.field private synthetic b:Lcey;


# direct methods
.method constructor <init>(Lcey;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcez;->b:Lcey;

    iput-object p2, p0, Lcez;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcez;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcez;->b:Lcey;

    iget-object v0, v0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/b;->a(Lcom/unionpay/mpay_2/upview/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcez;->b:Lcey;

    iget-object v0, v0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/b;->b(Lcom/unionpay/mpay_2/upview/b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcez;->b:Lcey;

    iget-object v0, v0, Lcey;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/b;->b(Lcom/unionpay/mpay_2/upview/b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method
