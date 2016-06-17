.class public final Lcom/alipay/android/mini/window/sdk/TransContainer;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/window/sdk/k;


# instance fields
.field private b:I

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Lxx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/TransContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/TransContainer;Lcom/alipay/wandoujia/ra;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/rh;

    new-instance v1, Ladu;

    invoke-direct {v1, p1}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/wandoujia/rh;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/TransContainer;Lxx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->d:Lxx;

    return-void
.end method

.method public static synthetic b(Lcom/alipay/android/mini/window/sdk/TransContainer;)Lxx;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->d:Lxx;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    :try_start_0
    const-string v0, "CallingPid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->b:I

    .line 79
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->b:I

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no biz id"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lacm;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->a()V

    .line 93
    return-void

    .line 82
    :cond_0
    :try_start_1
    invoke-static {}, Lace;->a()Lace;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->b:I

    invoke-virtual {v0, v1}, Lace;->b(I)Lacd;

    move-result-object v0

    iget-object v0, v0, Lacd;->c:Ladr;

    .line 83
    invoke-virtual {v0, p0}, Ladr;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v1

    .line 88
    const-string v2, "on trans activity create"

    .line 87
    invoke-virtual {v1, v0, v2}, Lacm;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Lzc;

    invoke-direct {v0, p0}, Lzc;-><init>(Lcom/alipay/android/mini/window/sdk/TransContainer;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/window/sdk/TransContainer;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method public final a(Lcom/alipay/android/mini/window/sdk/l;Lcom/alipay/wandoujia/bk;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    return-void
.end method

.method public final a(Lcom/alipay/wandoujia/rh;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->c:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    new-instance v0, Lzh;

    invoke-direct {v0, p0, p1}, Lzh;-><init>(Lcom/alipay/android/mini/window/sdk/TransContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/wandoujia/ra;Ljava/lang/String;Lcom/alipay/wandoujia/ra;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lze;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lze;-><init>(Lcom/alipay/android/mini/window/sdk/TransContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/wandoujia/ra;Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->d:Lxx;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->d:Lxx;

    invoke-virtual {v0}, Lxx;->dismiss()V

    .line 145
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->finish()V

    .line 225
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    invoke-static {}, Lack;->z()Lack;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lade;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->b(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method protected final onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->b()V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 98
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Ladu;

    sget-object v0, Lcom/alipay/wandoujia/ra;->j:Lcom/alipay/wandoujia/ra;

    invoke-direct {v1, v0}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/rh;

    invoke-interface {v0, p0, v1}, Lcom/alipay/wandoujia/rh;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    .line 101
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/TransContainer;->b(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    const-string v0, "bizId"

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/TransContainer;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
