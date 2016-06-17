.class public final Ldsv;
.super Ldcm;
.source "SearchSuggestionTextView.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ldcm;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Ldsv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 263
    if-eqz p1, :cond_0

    .line 264
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://search/suggestions"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 269
    :cond_0
    sget-object v0, Ldsr;->a:[I

    invoke-virtual {p2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    invoke-super {p0, p1, p2}, Ldcm;->a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;

    move-result-object v0

    new-instance v1, Ldld;

    invoke-direct {v1}, Ldld;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    :goto_0
    return-object v0

    .line 271
    :pswitch_0
    const v0, 0x7f0300fc

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldse;

    invoke-direct {v1}, Ldse;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldru;

    invoke-direct {v1}, Ldru;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldld;

    invoke-direct {v1}, Ldld;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
