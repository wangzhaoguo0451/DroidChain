.class public Lcom/wandoujia/ripple_framework/navigation/RippleUrlSpan;
.super Lcom/wandoujia/ripple_framework/html/style/URLSpan;
.source "RippleUrlSpan.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/html/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/html/style/URLSpan;->a:Ljava/lang/String;

    .line 28
    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/api/proto/Action$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    .line 33
    sget-object v2, Lham;->f:Lham;

    const-string v3, "navigation"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lhhy;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;Ljava/lang/String;)Z

    goto :goto_0
.end method
