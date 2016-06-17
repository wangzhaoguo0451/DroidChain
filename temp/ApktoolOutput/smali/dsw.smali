.class public final Ldsw;
.super Ldcm;
.source "StartPageAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ldcm;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f030173

    const/4 v2, 0x0

    .line 21
    sget-object v0, Ldsx;->a:[I

    invoke-virtual {p2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 27
    invoke-super {p0, p1, p2}, Ldcm;->a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;

    move-result-object v0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    invoke-static {p1, v3}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v0, v3, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldtc;

    invoke-direct {v1}, Ldtc;-><init>()V

    invoke-virtual {v0, v2, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
