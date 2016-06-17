.class public final Ldmb;
.super Lhic;
.source "DetailTagsPresenter.java"


# static fields
.field private static a:Lhma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lhma;

    invoke-direct {v0}, Lhma;-><init>()V

    sput-object v0, Ldmb;->a:Lhma;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method private static a(Lcom/wandoujia/api/proto/Tag;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0a007a

    const v9, 0x7f0a0079

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x100

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 53
    const v0, 0x7f03011e

    invoke-static {p1, v0}, Lj;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 55
    const v0, 0x7f0c0339

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f0c0338

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    iget-object v4, p0, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 73
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 74
    int-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 76
    :try_start_0
    iget-object v4, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    if-eqz v4, :cond_2

    .line 77
    iget-object v4, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Color;->normal:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v4, v6

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 89
    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 92
    :try_start_1
    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    if-eqz v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Color;->pressed:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :goto_2
    new-array v2, v8, [I

    const v5, 0x10100a7

    aput v5, v2, v7

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 105
    new-array v2, v8, [I

    const v4, -0x10100a7

    aput v4, v2, v7

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-static {v3, v0}, Lj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Ldkv;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 110
    const v0, 0x7f0c0040

    invoke-virtual {v3, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    return-object v3

    .line 67
    :cond_1
    sget-object v0, Ldmb;->a:Lhma;

    iget-object v4, p0, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 95
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a007a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 100
    :catch_1
    move-exception v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 5
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Ldmb;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/game/view/FlowLayout;

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-virtual {v0}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 39
    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/game/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0c0040

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Tag;

    .line 40
    if-eqz v1, :cond_0

    iget-object v4, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/game/view/FlowLayout;->removeViewAt(I)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Tag;

    .line 47
    invoke-static {v1, v0}, Ldmb;->a(Lcom/wandoujia/api/proto/Tag;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/game/view/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 49
    :cond_2
    return-void
.end method
