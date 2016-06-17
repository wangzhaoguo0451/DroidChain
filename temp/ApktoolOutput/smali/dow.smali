.class public final Ldow;
.super Lhic;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Ldow;->e()Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x708

    const v1, 0x7f0c0341

    invoke-static {v0, v2, v3, v1, p1}, Ld;->a(Landroid/view/View;JILcom/wandoujia/ripple_framework/model/Model;)V

    .line 133
    return-void
.end method
