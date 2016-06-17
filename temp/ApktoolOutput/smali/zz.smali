.class public final Lzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzz;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lzz;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcf;->a(Landroid/content/Context;)Lcf;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/Intent;

    .line 87
    const-string v2, "com.alipay.android.app.pay.PAY_SUSPEND"

    .line 86
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v1}, Lcf;->a(Landroid/content/Intent;)Z

    .line 88
    iget-object v0, p0, Lzz;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->finish()V

    .line 89
    return-void
.end method
