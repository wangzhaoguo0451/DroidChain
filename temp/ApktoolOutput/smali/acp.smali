.class public abstract Lacp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lacq;

    invoke-direct {v0, p0}, Lacq;-><init>(Lacp;)V

    iput-object v0, p0, Lacp;->d:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lacp;->a:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacp;->b:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lacp;->c:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method protected static a()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lace;->a()Lace;

    move-result-object v0

    invoke-virtual {v0}, Lace;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final b()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lacp;->a:Landroid/content/Context;

    invoke-static {v0}, Ladd;->b(Landroid/content/Context;)Lcom/alipay/wandoujia/id;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/alipay/wandoujia/id;->a:Lcom/alipay/wandoujia/id;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected abstract e()Z
.end method
