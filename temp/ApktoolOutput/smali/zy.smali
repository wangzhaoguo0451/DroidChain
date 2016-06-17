.class public final Lzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/app/pay/PayTask$OnPayListener;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzy;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.android.app.pay.ACTION_PAY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lzy;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lzy;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;)V

    .line 83
    iget-object v0, p0, Lzy;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->finish()V

    .line 84
    return-void
.end method

.method public final onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.android.app.pay.ACTION_PAY_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lzy;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    .line 70
    iget-object v0, p0, Lzy;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;)V

    .line 71
    iget-object v0, p0, Lzy;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->finish()V

    .line 72
    return-void
.end method
