.class final Lebx;
.super Ljava/lang/Object;
.source "MarioShortcutUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lebx;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xbb8

    .line 80
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lebw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Leby;

    invoke-direct {v2, p0, v0}, Leby;-><init>(Lebx;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {v0}, Lebw;->c(Landroid/content/Context;)V

    .line 97
    invoke-static {v0}, Lebw;->d(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lebz;

    invoke-direct {v3, p0, v0, v1}, Lebz;-><init>(Lebx;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
