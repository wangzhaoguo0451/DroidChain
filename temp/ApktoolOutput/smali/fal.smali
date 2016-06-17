.class final Lfal;
.super Ljava/lang/Object;
.source "ALIconUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lfal;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfal;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lehv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-boolean v0, p0, Lfal;->a:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lfak;->d()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-boolean v0, p0, Lfal;->b:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lfak;->e()V

    goto :goto_0
.end method
