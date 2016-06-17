.class public final Ldud;
.super Ldcm;
.source "PublisherProfileFragment.java"


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ldcm;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Ldud;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 93
    sget-object v0, Lduc;->a:[I

    invoke-virtual {p2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1, p2}, Ldcm;->a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;

    move-result-object v0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    const v0, 0x7f0300fc

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lerf;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lhjb;

    invoke-direct {v0}, Lhjb;-><init>()V

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2, v0, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqr;

    invoke-direct {v1}, Ldqr;-><init>()V

    const v2, 0x7f0c005e

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lduf;

    invoke-direct {v1, v3}, Lduf;-><init>(B)V

    const v2, 0x7f0c0300

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
