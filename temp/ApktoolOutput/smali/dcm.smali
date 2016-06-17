.class public Ldcm;
.super Lhaw;
.source "ListAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lhaw;-><init>()V

    .line 64
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4
    .parameter

    .prologue
    .line 350
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    const v1, 0x7f0c0040

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 353
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0c0002

    const v6, 0x7f0c0078

    const v5, 0x7f0c005e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 72
    sget-object v0, Ldcn;->a:[I

    invoke-virtual {p2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 345
    invoke-super {p0, p1, p2}, Lhaw;->a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;

    move-result-object v0

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const v0, 0x7f0300b0

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    const v1, 0x7f0300b0

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldku;

    invoke-direct {v1}, Ldku;-><init>()V

    invoke-virtual {v0, v7, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_1
    const v0, 0x7f0300af

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->f(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_2
    const v0, 0x7f030123

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v2, Ldna;

    invoke-direct {v2, v1}, Ldna;-><init>(Lhas;)V

    invoke-virtual {v0, v4, v2, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_3
    const v0, 0x7f03016c

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldlc;

    invoke-direct {v1}, Ldlc;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldns;

    invoke-direct {v1}, Ldns;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldra;

    invoke-direct {v1}, Ldra;-><init>()V

    invoke-virtual {v0, v5, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_4
    const v0, 0x7f030142

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldpn;

    invoke-direct {v1}, Ldpn;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 94
    :pswitch_5
    const v0, 0x7f030164

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :pswitch_6
    const v0, 0x7f030171

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->b(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 101
    :pswitch_7
    const v0, 0x7f03016b

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->b(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldiq;

    invoke-direct {v1}, Ldiq;-><init>()V

    const v2, 0x7f0c0372

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 105
    :pswitch_8
    const v0, 0x7f0300fe

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqq;

    invoke-direct {v1}, Ldqq;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c0060

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldns;

    invoke-direct {v1}, Ldns;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 109
    :pswitch_9
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->H()V

    .line 110
    const v0, 0x7f03012c

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldlf;

    invoke-direct {v1, v4}, Ldlf;-><init>(B)V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldoh;

    invoke-direct {v1}, Ldoh;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 113
    :pswitch_a
    const v0, 0x7f030127

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldnn;

    invoke-direct {v0}, Ldnn;-><init>()V

    invoke-virtual {v2, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldns;

    invoke-direct {v1}, Ldns;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :pswitch_b
    const v0, 0x7f030127

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->e(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 120
    :pswitch_c
    const v0, 0x7f03015f

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->c(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqi;

    invoke-direct {v1}, Ldqi;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :pswitch_d
    const v0, 0x7f03016a

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->c(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :pswitch_e
    const v0, 0x7f03015e

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->d(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :pswitch_f
    const v0, 0x7f030163

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->j(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :pswitch_10
    const v0, 0x7f030160

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->d(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :pswitch_11
    const v0, 0x7f03016d

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldlf;

    invoke-direct {v0}, Ldlf;-><init>()V

    const v1, 0x7f0c0016

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqo;

    invoke-direct {v1}, Ldqo;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :pswitch_12
    const v0, 0x7f03014d

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldlf;

    invoke-direct {v0}, Ldlf;-><init>()V

    const v1, 0x7f0c0016

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpu;

    invoke-direct {v1}, Ldpu;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :pswitch_13
    const v0, 0x7f030169

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 148
    instance-of v2, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Luq;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setRecycledViewPool(Luq;)V

    .line 149
    :goto_1
    new-instance v2, Ldcm;

    invoke-direct {v2}, Ldcm;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Luh;)V

    .line 150
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldpo;

    invoke-direct {v0}, Ldpo;-><init>()V

    const v1, 0x7f0c0053

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    :cond_0
    new-instance v2, Luq;

    invoke-direct {v2}, Luq;-><init>()V

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->CARD_ICON_TINY:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Luq;->a(I)V

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_IMAGE:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Luq;->a(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setRecycledViewPool(Luq;)V

    goto :goto_1

    .line 153
    :pswitch_14
    const v0, 0x7f030141

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    new-instance v1, Lerf;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-direct {v1, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldqh;

    invoke-direct {v0}, Ldqh;-><init>()V

    const v2, 0x7f0c0129

    invoke-virtual {v1, v2, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhid;

    invoke-direct {v1}, Lhid;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 158
    :pswitch_15
    const v0, 0x7f030128

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Ldno;

    invoke-direct {v0}, Ldno;-><init>()V

    invoke-virtual {v1, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 161
    :pswitch_16
    const v0, 0x7f030129

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 162
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->j(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :pswitch_17
    const v0, 0x7f030160

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 165
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->c(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 167
    :pswitch_18
    const v0, 0x7f030118

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 168
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldmg;

    invoke-direct {v1}, Ldmg;-><init>()V

    invoke-virtual {v0, v5, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c005f

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldoj;

    invoke-direct {v1}, Ldoj;-><init>()V

    invoke-virtual {v0, v7, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqy;

    invoke-direct {v1}, Ldqy;-><init>()V

    const v2, 0x7f0c0082

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpj;

    invoke-direct {v1}, Ldpj;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpi;

    invoke-direct {v1}, Ldpi;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldlv;

    invoke-direct {v1}, Ldlv;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldlr;

    invoke-direct {v1}, Ldlr;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :pswitch_19
    const v0, 0x7f03010a

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 172
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldmg;

    invoke-direct {v1}, Ldmg;-><init>()V

    invoke-virtual {v0, v5, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldlf;

    invoke-direct {v1}, Ldlf;-><init>()V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :pswitch_1a
    const v0, 0x7f03011d

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 176
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldmb;

    invoke-direct {v0}, Ldmb;-><init>()V

    const v1, 0x7f0c0337

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :pswitch_1b
    const v0, 0x7f03011f

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 179
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldmc;

    invoke-direct {v0}, Ldmc;-><init>()V

    invoke-virtual {v2, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :pswitch_1c
    const v0, 0x7f030170

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 182
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldlf;

    invoke-direct {v0}, Ldlf;-><init>()V

    const v1, 0x7f0c0016

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    invoke-virtual {v0, v7, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqp;

    invoke-direct {v1}, Ldqp;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 184
    :pswitch_1d
    const v0, 0x7f030108

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldlg;

    invoke-direct {v0}, Ldlg;-><init>()V

    invoke-virtual {v2, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :pswitch_1e
    const v0, 0x7f03010b

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 188
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldll;

    invoke-direct {v0}, Ldll;-><init>()V

    invoke-virtual {v2, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :pswitch_1f
    const v0, 0x7f030110

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 191
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lhjb;

    invoke-direct {v0}, Lhjb;-><init>()V

    const v1, 0x7f0c0023

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqh;

    invoke-direct {v1}, Ldqh;-><init>()V

    const v2, 0x7f0c0129

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmf;

    invoke-direct {v1}, Ldmf;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :pswitch_20
    const v0, 0x7f030111

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 194
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldqh;

    invoke-direct {v0}, Ldqh;-><init>()V

    const v1, 0x7f0c0129

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 196
    :pswitch_21
    const v0, 0x7f03011b

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 197
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldpb;

    invoke-direct {v1}, Ldpb;-><init>()V

    invoke-virtual {v0, v6, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldoc;

    invoke-direct {v1}, Ldoc;-><init>()V

    const v2, 0x7f0c0336

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldoa;

    invoke-direct {v1}, Ldoa;-><init>()V

    invoke-virtual {v0, v7, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :pswitch_22
    const v0, 0x7f030109

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 200
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldlk;

    invoke-direct {v0}, Ldlk;-><init>()V

    invoke-virtual {v2, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 202
    :pswitch_23
    const v0, 0x7f03014c

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 203
    new-instance v1, Lerf;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-direct {v1, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 205
    :pswitch_24
    const v0, 0x7f030106

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    new-instance v1, Lerf;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-direct {v1, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 208
    :pswitch_25
    const v0, 0x7f03011c

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 209
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldma;

    invoke-direct {v0}, Ldma;-><init>()V

    const v1, 0x7f0c01ae

    invoke-virtual {v2, v1, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    :pswitch_26
    invoke-static {p1}, Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/jupiter/search/view/SearchHotQueryItem;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->k(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 214
    :pswitch_27
    const v0, 0x7f030151

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 215
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->k(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    :pswitch_28
    const v0, 0x7f030180

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 218
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :pswitch_29
    const v0, 0x7f030104

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 221
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldrw;

    invoke-direct {v1}, Ldrw;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :pswitch_2a
    const v0, 0x7f030155

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 224
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lcom/wandoujia/jupiter/presenter/ListPresenterFactory$11;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/presenter/ListPresenterFactory$11;-><init>()V

    invoke-virtual {v2, v6, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhid;

    invoke-direct {v1}, Lhid;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :pswitch_2b
    const v0, 0x7f03014f

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :pswitch_2c
    const v0, 0x7f03012e

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 230
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Lhjb;

    invoke-direct {v0}, Lhjb;-><init>()V

    invoke-virtual {v1, v6, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 234
    :pswitch_2d
    const v0, 0x7f03012f

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Lhjb;

    invoke-direct {v0}, Lhjb;-><init>()V

    invoke-virtual {v1, v6, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 237
    :pswitch_2e
    const v0, 0x7f03016b

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->b(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldip;

    invoke-direct {v1}, Ldip;-><init>()V

    const v2, 0x7f0c0372

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 241
    :pswitch_2f
    const v0, 0x7f03014e

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 242
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->g(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c01ae

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 245
    :pswitch_30
    const v0, 0x7f03014e

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    invoke-static {v0}, Ldcm;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->g(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 249
    :pswitch_31
    const v0, 0x7f03015b

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldlf;

    invoke-direct {v1}, Ldlf;-><init>()V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldop;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-direct {v1, v2, v3}, Ldop;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 252
    :pswitch_32
    const v0, 0x7f03018c

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 253
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->h(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldoo;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-direct {v1, v2, v3}, Ldoo;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 255
    :pswitch_33
    const v0, 0x7f030152

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    new-instance v1, Lerf;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-direct {v1, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldqd;

    invoke-direct {v0}, Ldqd;-><init>()V

    invoke-virtual {v1, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 259
    :pswitch_34
    const v0, 0x7f03015d

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 260
    new-instance v1, Lerf;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-direct {v1, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldqf;

    invoke-direct {v0}, Ldqf;-><init>()V

    invoke-virtual {v1, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 263
    :pswitch_35
    const v0, 0x7f030153

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 264
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldpw;

    invoke-direct {v1}, Ldpw;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    :pswitch_36
    const v0, 0x7f030154

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 269
    :pswitch_37
    const v0, 0x7f030150

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    new-instance v1, Lerf;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-direct {v1, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldrz;

    invoke-direct {v0}, Ldrz;-><init>()V

    invoke-virtual {v1, v6, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 273
    :pswitch_38
    const v0, 0x7f0300fc

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :pswitch_39
    const v0, 0x7f03015a

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 277
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Lhjb;

    invoke-direct {v0}, Lhjb;-><init>()V

    invoke-virtual {v1, v6, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldsg;

    invoke-direct {v1}, Ldsg;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldse;

    invoke-direct {v1}, Ldse;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 279
    :pswitch_3a
    const v0, 0x7f030130

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 280
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldov;

    invoke-direct {v1}, Ldov;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    invoke-virtual {v0, v6, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldou;

    invoke-direct {v1}, Ldou;-><init>()V

    invoke-virtual {v0, v5, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldiy;

    invoke-direct {v1}, Ldiy;-><init>()V

    const v2, 0x7f0c033c

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldiu;

    invoke-direct {v1}, Ldiu;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldoq;

    invoke-direct {v1}, Ldoq;-><init>()V

    invoke-virtual {v0, v7, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpm;

    invoke-direct {v1}, Ldpm;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 282
    :pswitch_3b
    const v0, 0x7f030137

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->i(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 285
    :pswitch_3c
    const v0, 0x7f030138

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 286
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldoy;

    invoke-direct {v1}, Ldoy;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :pswitch_3d
    const v0, 0x7f030137

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 289
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->i(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 291
    :pswitch_3e
    const v0, 0x7f030121

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 292
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldms;

    invoke-direct {v1}, Ldms;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmy;

    invoke-direct {v1}, Ldmy;-><init>()V

    invoke-virtual {v0, v5, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmi;

    invoke-direct {v1}, Ldmi;-><init>()V

    invoke-virtual {v0, v7, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmo;

    invoke-direct {v1}, Ldmo;-><init>()V

    const v2, 0x7f0c0012

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmn;

    invoke-direct {v1}, Ldmn;-><init>()V

    const v2, 0x7f0c0012

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmw;

    invoke-direct {v1}, Ldmw;-><init>()V

    const v2, 0x7f0c0045

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmt;

    invoke-direct {v1}, Ldmt;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 294
    :pswitch_3f
    const v0, 0x7f030161

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 295
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->l(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :pswitch_40
    const v0, 0x7f03013b

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 298
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 300
    :pswitch_41
    const v0, 0x7f030178

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Ldqu;

    invoke-direct {v0}, Ldqu;-><init>()V

    invoke-virtual {v2, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 303
    :pswitch_42
    const v0, 0x7f03013a

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 306
    :pswitch_43
    const v0, 0x7f030107

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 309
    :pswitch_44
    const v0, 0x7f03018c

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 310
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->h(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    :pswitch_45
    const v0, 0x7f030140

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 313
    iget-object v1, p0, Lhaz;->f:Lhas;

    new-instance v2, Lerf;

    invoke-direct {v2, v0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lhjb;

    invoke-direct {v0}, Lhjb;-><init>()V

    invoke-virtual {v2, v6, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    invoke-virtual {v0, v5, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpk;

    invoke-direct {v1}, Ldpk;-><init>()V

    invoke-virtual {v0, v7, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhif;

    invoke-direct {v1}, Lhif;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 317
    :pswitch_46
    const v0, 0x7f030164

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 318
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v1

    new-instance v2, Ldpa;

    invoke-direct {v2, v0}, Ldpa;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v5, v2, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :pswitch_47
    const v0, 0x7f030166

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 321
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldmh;

    invoke-direct {v1}, Ldmh;-><init>()V

    invoke-virtual {v0, v5, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :pswitch_48
    const v0, 0x7f03017a

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 325
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqv;

    invoke-direct {v1}, Ldqv;-><init>()V

    const v2, 0x7f0c0024

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqw;

    invoke-direct {v1}, Ldqw;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 327
    :pswitch_49
    const v0, 0x7f030112

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 328
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldoz;

    invoke-direct {v1}, Ldoz;-><init>()V

    const v2, 0x7f0c029f

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :pswitch_4a
    const v0, 0x7f030126

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 331
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 333
    :pswitch_4b
    const v0, 0x7f030165

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 334
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqt;

    invoke-direct {v1}, Ldqt;-><init>()V

    invoke-virtual {v0, v5, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnz;

    invoke-direct {v1}, Ldnz;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    :pswitch_4c
    const v0, 0x7f0301f4

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 339
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Lhkn;

    invoke-direct {v0}, Lhkn;-><init>()V

    invoke-virtual {v1, v4, v0, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhid;

    invoke-direct {v1}, Lhid;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhkl;

    invoke-direct {v1}, Lhkl;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 341
    :pswitch_4d
    const v0, 0x7f0300ff

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 342
    iget-object v1, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
    .end packed-switch
.end method

.method protected final a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;Lerf;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0c0370

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    sget-object v0, Ldcn;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 46
    :pswitch_0
    new-instance v0, Ldqe;

    invoke-direct {v0}, Ldqe;-><init>()V

    invoke-virtual {p2, v2, v0, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldng;

    invoke-direct {v1}, Ldng;-><init>()V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnh;

    invoke-direct {v1}, Ldnh;-><init>()V

    const v2, 0x7f0c0078

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhkv;

    invoke-direct {v1}, Lhkv;-><init>()V

    invoke-virtual {v0, v4, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    goto :goto_0

    .line 59
    :pswitch_1
    new-instance v0, Ldpt;

    invoke-direct {v0}, Ldpt;-><init>()V

    invoke-virtual {p2, v2, v0, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhkv;

    invoke-direct {v1}, Lhkv;-><init>()V

    invoke-virtual {v0, v4, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    goto :goto_0

    .line 63
    :pswitch_2
    new-instance v0, Lhid;

    invoke-direct {v0}, Lhid;-><init>()V

    const v1, 0x7f0c0023

    invoke-virtual {p2, v1, v0, v2}, Lerf;->a(ILerg;Z)Lerf;

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
