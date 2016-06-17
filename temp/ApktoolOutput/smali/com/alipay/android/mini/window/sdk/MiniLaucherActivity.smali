.class public Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a:Z

    .line 21
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 59
    :try_start_0
    const-string v0, "order_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/alipay/android/app/pay/PayTask;

    new-instance v2, Lzy;

    invoke-direct {v2, p0}, Lzy;-><init>(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/pay/PayTask;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V

    .line 86
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/pay/PayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->finish()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 47
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a:Z

    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0x1771

    invoke-static {v0}, Lcom/alipay/android/app/m;->b(I)Lcom/alipay/android/app/m;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.android.app.pay.ACTION_PAY_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v2, "resultStatus"

    invoke-virtual {v0}, Lcom/alipay/android/app/m;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v2, "memo"

    invoke-virtual {v0}, Lcom/alipay/android/app/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "result"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 32
    invoke-static {}, Lack;->z()Lack;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lade;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 34
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
