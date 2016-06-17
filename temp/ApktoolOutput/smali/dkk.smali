.class public final Ldkk;
.super Lhaw;
.source "EssentialGameAdapter.java"


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
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    const v0, 0x7f030122

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Ld;->a(Landroid/view/ViewGroup;)Lerf;

    move-result-object v0

    return-object v0
.end method
