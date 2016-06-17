.class public Ldcl;
.super Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;
.source "JupiterItemDecoration.java"


# instance fields
.field private a:Lerv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I


# direct methods
.method public constructor <init>(Lerv;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldcl;-><init>(Lerv;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lerv;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldcl;-><init>(Lerv;Z)V

    .line 49
    iput p2, p0, Ldcl;->d:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lerv;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;-><init>()V

    .line 31
    iput-object p1, p0, Ldcl;->a:Lerv;

    .line 32
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ldcl;->c:Landroid/graphics/drawable/Drawable;

    .line 34
    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ldcl;->e:Landroid/graphics/drawable/Drawable;

    .line 35
    const v1, 0x7f02035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ldcl;->f:Landroid/graphics/drawable/Drawable;

    .line 36
    const v1, 0x7f0b0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Ldcl;->g:I

    .line 37
    iput-boolean p2, p0, Ldcl;->b:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Ldcl;->d:I

    .line 39
    return-void
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Ldcl;->a:Lerv;

    instance-of v0, v0, Lern;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Ldcl;->a:Lerv;

    check-cast v0, Lern;

    iget-object v0, v0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int/2addr p1, v0

    .line 164
    :cond_0
    return p1
.end method


# virtual methods
.method protected final a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(II)Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->TOP:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    return-object v0
.end method

.method protected final c(II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0, p1, p2}, Ldcl;->d(II)I

    move-result v0

    iget v1, p0, Ldcl;->g:I

    if-ne v0, v1, :cond_5

    .line 81
    invoke-direct {p0, p2}, Ldcl;->a(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Ldcl;->a:Lerv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldcl;->a:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldcl;->a:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Ldcl;->f:Landroid/graphics/drawable/Drawable;

    .line 87
    :goto_1
    return-object v0

    .line 81
    :cond_1
    iget-object v1, p0, Ldcl;->a:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_HIGHLIGHT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_2
    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->NAVIGATION:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Ldcl;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 87
    :cond_5
    iget-object v0, p0, Ldcl;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public d(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    iget-object v0, p0, Ldcl;->a:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v4

    .line 97
    :cond_1
    iget-object v0, p0, Ldcl;->a:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Ldcl;->a:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    iget-object v1, p0, Ldcl;->a:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->END:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v0, v1, :cond_0

    .line 101
    :cond_2
    if-nez p2, :cond_3

    .line 102
    iget v4, p0, Ldcl;->d:I

    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0, p2}, Ldcl;->a(I)I

    move-result v1

    .line 106
    if-lez v1, :cond_e

    iget-object v0, p0, Ldcl;->a:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 107
    iget-object v0, p0, Ldcl;->a:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 108
    iget-object v2, p0, Ldcl;->a:Lerv;

    iget-object v2, v2, Lerv;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    .line 111
    iget-boolean v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->e:Z

    if-eqz v2, :cond_b

    .line 112
    iget-boolean v2, p0, Ldcl;->b:Z

    if-eqz v2, :cond_9

    move v2, v4

    .line 136
    :cond_4
    :goto_1
    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SEARCH_FILTER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v5, v6, :cond_5

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v5, v6, :cond_5

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->INTRODUCTION:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v5, v6, :cond_6

    :cond_5
    move v2, v4

    .line 143
    :cond_6
    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v5, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v5, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_MINI:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v1, v5, :cond_7

    move v2, v4

    .line 148
    :cond_7
    if-eqz v2, :cond_8

    iget v3, p0, Ldcl;->g:I

    .line 150
    :cond_8
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v0, v1, :cond_0

    move v4, v3

    goto/16 :goto_0

    .line 117
    :cond_9
    iget-object v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eq v2, v0, :cond_a

    iget-object v2, v1, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-ne v2, v5, :cond_0

    :cond_a
    move v2, v4

    .line 119
    goto :goto_1

    .line 125
    :cond_b
    iget-object v2, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v5, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v2, v5, :cond_d

    move v2, v3

    .line 127
    :goto_2
    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v6, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v5, v6, :cond_4

    .line 128
    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_PORTRAIT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v5, v6, :cond_c

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_PORTRAIT_HEADER_BOTTOM:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v5, v6, :cond_c

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_AUTO_GRID:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v5, v6, :cond_c

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SECTION_AUTO_GRID_HEADER_BOTTOM:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v5, v6, :cond_4

    :cond_c
    move v2, v3

    .line 132
    goto :goto_1

    :cond_d
    move v2, v4

    .line 125
    goto :goto_2

    .line 155
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;->d(II)I

    move-result v4

    goto/16 :goto_0
.end method
