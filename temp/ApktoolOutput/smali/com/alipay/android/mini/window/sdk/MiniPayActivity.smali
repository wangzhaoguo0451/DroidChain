.class public Lcom/alipay/android/mini/window/sdk/MiniPayActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/window/sdk/k;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;

.field private c:Lxx;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:I

    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Lcom/alipay/wandoujia/ra;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/rh;

    new-instance v1, Ladu;

    invoke-direct {v1, p1}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/wandoujia/rh;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Lxx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lxx;

    return-void
.end method

.method public static synthetic b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lxx;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lxx;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    const-string v0, "CallingPid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:I

    .line 114
    :try_start_0
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:I

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "no biz id"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->finish()V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_1
    invoke-static {}, Lace;->a()Lace;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:I

    invoke-virtual {v0, v1}, Lace;->b(I)Lacd;

    move-result-object v0

    iget-object v0, v0, Lacd;->c:Ladr;

    .line 118
    invoke-virtual {v0, p0}, Ladr;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Ld;->g()V

    .line 194
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Laad;

    invoke-direct {v0, p0}, Laad;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method public a(Lcom/alipay/android/mini/window/sdk/l;Lcom/alipay/wandoujia/bk;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "mini_layout"

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)I

    move-result v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    invoke-interface {p1, p0, v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 133
    const/4 v1, 0x6

    if-eq p3, v1, :cond_0

    .line 134
    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    .line 135
    const/16 v1, -0xa

    if-eq p3, v1, :cond_0

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    const/16 v0, 0x9

    if-ne p3, v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b()V

    .line 145
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/wandoujia/rh;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    .line 244
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    .line 229
    new-instance v0, Laae;

    invoke-direct {v0, p0, p0, p1}, Laae;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/wandoujia/ra;Ljava/lang/String;Lcom/alipay/wandoujia/ra;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Laaa;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Laaa;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/wandoujia/ra;Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lxx;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lxx;

    invoke-virtual {v0}, Lxx;->dismiss()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lxx;

    .line 218
    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->finish()V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 48
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    invoke-static {}, Lack;->z()Lack;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lade;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 51
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    const-string v1, " mini pay activity decorView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    const-string v0, "mini_layout"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 59
    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lxo;

    invoke-direct {v0, p0}, Lxo;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v1, "mini_error_title_default"

    invoke-static {v1}, Lg;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lxo;->a(I)Lxo;

    .line 77
    const-string v1, "\u7cfb\u7edf\u5f02\u5e38\uff0c\u8be5\u4ea4\u6613\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u4e0b\u5355\u3002"

    invoke-virtual {v0, v1}, Lxo;->a(Ljava/lang/CharSequence;)Lxo;

    .line 79
    new-instance v1, Lzz;

    invoke-direct {v1, p0}, Lzz;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V

    .line 78
    iget-object v2, v0, Lxo;->a:Lxq;

    iget-object v2, v2, Lxq;->c:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lxo;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lxo;

    .line 91
    invoke-virtual {v0}, Lxo;->a()Lxn;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b()V

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 224
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 261
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v1, Ladu;

    sget-object v0, Lcom/alipay/wandoujia/ra;->j:Lcom/alipay/wandoujia/ra;

    invoke-direct {v1, v0}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    .line 263
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/rh;

    invoke-interface {v0, p0, v1}, Lcom/alipay/wandoujia/rh;->a(Ljava/lang/Object;Lcom/alipay/wandoujia/db;)Z

    .line 264
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b()V

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    const-string v0, "bizId"

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method
