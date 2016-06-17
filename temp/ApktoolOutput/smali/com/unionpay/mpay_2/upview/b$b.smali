.class final Lcom/unionpay/mpay_2/upview/b$b;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/unionpay/mpay_2/upview/b;


# direct methods
.method private constructor <init>(Lcom/unionpay/mpay_2/upview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mpay_2/upview/b$b;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/mpay_2/upview/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mpay_2/upview/b$b;-><init>(Lcom/unionpay/mpay_2/upview/b;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/b$b;->a:Lcom/unionpay/mpay_2/upview/b;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/b;->a(Lcom/unionpay/mpay_2/upview/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
