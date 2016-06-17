.class public final Ldpi;
.super Ldlq;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ldlq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 510
    invoke-super {p0, p1}, Ldlq;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 511
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->GIFT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Ldpi;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 514
    :cond_0
    return-void
.end method
