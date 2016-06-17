.class public Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;
.super Landroid/app/Activity;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Lbva;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/webkit/WebView;

.field private j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/Button;

.field private m:Lbvb;

.field private n:Lbvj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/view/LoadingBar;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 577
    invoke-static {}, Lbvf;->a()Lbvf;

    move-result-object v0

    .line 579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    invoke-virtual {v0, p1}, Lbvf;->b(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 583
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    invoke-virtual {v0, p2}, Lbvf;->d(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 587
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d:Z

    return-void
.end method

.method private static a(Lbvb;)Z
    .locals 2
    .parameter

    .prologue
    .line 510
    invoke-virtual {p0}, Lbvb;->c()Lcom/sina/weibo/sdk/component/BrowserLauncher;

    move-result-object v0

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->SHARE:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d:Z

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 451
    invoke-static {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 227
    const-string v0, ""

    .line 229
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    .line 235
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d()V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    const-string v1, "sinaweibo"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic e(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lbvb;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 418
    return-void
.end method

.method public static synthetic f(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e()V

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_0
    iput-boolean v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    .line 558
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError: errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 566
    const-string v1, ", description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 567
    const-string v1, ", failingUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v0, "sinaweibo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e()V

    .line 569
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    .line 534
    invoke-static {p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    .line 543
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d:Z

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const-string v1, "Loading...."

    const-string v2, "\u52a0\u8f7d\u4e2d...."

    const-string v3, "\u8f09\u5165\u4e2d...."

    invoke-static {v1, v2, v3}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v10, -0x2

    const/4 v3, 0x1

    const/4 v9, -0x1

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v1, 0x0

    const-string v0, "key_launcher"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    sget-object v5, Lcom/sina/weibo/sdk/component/BrowserLauncher;->AUTH:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v5, :cond_0

    new-instance v0, Lbuy;

    invoke-direct {v0, p0}, Lbuy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lbuy;->c(Landroid/os/Bundle;)V

    new-instance v1, Lbuz;

    invoke-direct {v1, p0, v0}, Lbuz;-><init>(Landroid/app/Activity;Lbuy;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lbvj;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lbvj;

    invoke-virtual {v1, p0}, Lbvj;->a(Lbva;)V

    :goto_0
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 136
    :goto_2
    return-void

    .line 122
    :cond_0
    sget-object v5, Lcom/sina/weibo/sdk/component/BrowserLauncher;->SHARE:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v5, :cond_1

    new-instance v0, Lbvc;

    invoke-direct {v0, p0}, Lbvc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lbvc;->c(Landroid/os/Bundle;)V

    new-instance v1, Lbve;

    invoke-direct {v1, p0, v0}, Lbve;-><init>(Landroid/app/Activity;Lbvc;)V

    invoke-virtual {v1, p0}, Lbve;->a(Lbva;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lbvj;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/sina/weibo/sdk/component/BrowserLauncher;->WIDGET:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v5, :cond_9

    new-instance v0, Lbvk;

    invoke-direct {v0, p0}, Lbvk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lbvk;->c(Landroid/os/Bundle;)V

    new-instance v1, Lbvm;

    invoke-direct {v1, p0, v0}, Lbvm;-><init>(Landroid/app/Activity;Lbvk;)V

    invoke-virtual {v1, p0}, Lbvm;->a(Lbva;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lbvj;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    invoke-virtual {v0}, Lbvb;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOAD URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    iget-object v0, v0, Lbvb;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    move v0, v3

    goto :goto_1

    .line 127
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v6, 0x2d

    invoke-static {p0, v6}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "weibosdk_navigationbar_background.9.png"

    invoke-static {p0, v5}, Lbwf;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    const/high16 v6, 0x4188

    invoke-virtual {v5, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    invoke-static {}, Lbwf;->a()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    const-string v6, "Close"

    const-string v7, "\u5173\u95ed"

    const-string v8, "\u5173\u95ed"

    invoke-static {v6, v7, v8}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xa

    invoke-static {p0, v6}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v6, 0xa

    invoke-static {p0, v6}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const/high16 v6, 0x4190

    invoke-virtual {v5, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const v6, -0xadadae

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const/16 v6, 0xa0

    invoke-static {p0, v6}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "weibosdk_common_shadow_top.9.png"

    invoke-static {p0, v6}, Lbwf;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-direct {v6, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    iget-object v6, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v6, v2}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v6, v2}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x3

    invoke-static {p0, v7}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v7, v6}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v4, v9}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v5, "weibosdk_empty_failed.png"

    invoke-static {p0, v5}, Lbwf;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x8

    invoke-static {p0, v6}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v5, -0x424243

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x4160

    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "A network error occurs, please tap the button to reload"

    const-string v6, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    const-string v7, "\u7db2\u8def\u51fa\u932f\u5566\uff0c\u8acb\u9ede\u64ca\u6309\u9215\u91cd\u65b0\u8f09\u5165"

    invoke-static {v5, v6, v7}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setGravity(I)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const v5, -0x878788

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const/high16 v5, 0x4180

    invoke-virtual {v4, v11, v5}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const-string v5, "channel_data_error"

    const-string v6, "\u91cd\u65b0\u52a0\u8f7d"

    const-string v7, "\u91cd\u65b0\u8f09\u5165"

    invoke-static {v5, v6, v7}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const-string v5, "weibosdk_common_button_alpha.9.png"

    const-string v6, "weibosdk_common_button_alpha_highlighted.9.png"

    invoke-static {p0, v5, v6}, Lbwf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x8e

    invoke-static {p0, v5}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x2e

    invoke-static {p0, v6}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-static {p0, v5}, Lbwf;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    new-instance v5, Lbvi;

    invoke-direct {v5, p0}, Lbvi;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    new-instance v1, Lbvh;

    invoke-direct {v1, p0}, Lbvh;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lbvb;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Ld;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lbvj;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    new-instance v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 131
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lbvb;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    check-cast v0, Lbvc;

    invoke-virtual {v0}, Lbvc;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lbvy;

    iget-object v2, v0, Lbvc;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbvy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbvc;->d()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    new-instance v2, Lbvs;

    invoke-direct {v2, p0}, Lbvs;-><init>(Landroid/content/Context;)V

    const-string v3, "http://service.weibo.com/share/mobilesdk_uppic.php"

    const-string v4, "POST"

    new-instance v5, Lbvg;

    invoke-direct {v5, p0, v0}, Lbvg;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lbvc;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lbvs;->a(Ljava/lang/String;Lbvy;Ljava/lang/String;Lbvx;)V

    goto/16 :goto_2

    :cond_6
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lbvc;->h:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "img"

    invoke-virtual {v1, v3, v2}, Lbvy;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 468
    invoke-static {p0}, Ld;->i(Landroid/content/Context;)V

    .line 469
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 470
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 474
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Lbvb;

    .line 476
    invoke-virtual {v0, p0}, Lbvb;->a(Landroid/app/Activity;)V

    .line 477
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 464
    return-void
.end method
