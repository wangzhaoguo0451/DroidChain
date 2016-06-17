.class public final Ldox;
.super Lhic;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 869
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 872
    invoke-virtual {p0}, Ldox;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    const v2, 0x7f0a0044

    invoke-static {v0, v1, v2}, Lhma;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 874
    return-void
.end method
