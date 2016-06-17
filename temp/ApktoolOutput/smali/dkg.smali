.class public final Ldkg;
.super Lhaw;
.source "EssentialAppAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lhaw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 19
    const v0, 0x7f030122

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Ld;->a(Landroid/view/ViewGroup;)Lerf;

    move-result-object v0

    new-instance v1, Ldpc;

    invoke-direct {v1}, Ldpc;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldow;

    invoke-direct {v1}, Ldow;-><init>()V

    const v2, 0x7f0c0342

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldoi;

    invoke-direct {v1}, Ldoi;-><init>()V

    const v2, 0x7f0c0078

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method
