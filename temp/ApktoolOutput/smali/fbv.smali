.class public final Lfbv;
.super Ljava/lang/Object;
.source "CardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lfca;",
        "Lcom/wandoujia/p4/card/models/CardViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 36
    :cond_1
    invoke-virtual {p0}, Lfca;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lfca;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_2
    invoke-virtual {p0}, Lfca;->b()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lfca;->b()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lfca;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3, v1}, Ld;->a(Landroid/content/Context;ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->a()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    invoke-virtual {p0}, Lfca;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_5
    invoke-virtual {p0}, Lfca;->d()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lfca;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_6
    invoke-virtual {p0}, Lfca;->f()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lfca;->f()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :cond_7
    invoke-virtual {p0}, Lfca;->c()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lfca;->c()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/image/ImageUri;

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/image/ImageUri$ImageUriType;->UNSPECIFIED:Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/image/ImageUri;-><init>(Ljava/lang/String;Lcom/wandoujia/image/ImageUri$ImageUriType;)V

    const v2, 0x7f0a0044

    invoke-static {v0, v1, v2}, Ld;->a(Lcom/wandoujia/image/view/AsyncImageView;Lcom/wandoujia/image/ImageUri;I)V

    .line 41
    :cond_8
    invoke-virtual {p0}, Lfca;->g()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lfca;->g()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/button/views/SubActionButton;->setVisibility(I)V

    .line 43
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lfca;->e()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 44
    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    invoke-virtual {p0}, Lfca;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lfca;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 67
    invoke-virtual {p0}, Lfca;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/wandoujia/p4/card/models/CardViewModel;->b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_b

    .line 69
    invoke-virtual {p0}, Lfca;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfbx;

    invoke-direct {v2, v0}, Lfbx;-><init>(Lcom/wandoujia/mvc/Action;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_b
    return-void

    .line 41
    :cond_c
    invoke-virtual {p0}, Lfca;->g()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/wandoujia/p4/button/views/SubActionButton;->setVisibility(I)V

    invoke-virtual {p0}, Lfca;->g()Lcom/wandoujia/p4/button/views/SubActionButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->setData(Ljava/util/List;)V

    goto :goto_1

    .line 50
    :cond_d
    invoke-virtual {p0}, Lfca;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lfca;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/p4/card/models/CardViewModel;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lfca;->e()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lfbw;

    invoke-direct {v1, p1, p0}, Lfbw;-><init>(Lcom/wandoujia/p4/card/models/CardViewModel;Lfca;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Lfca;

    check-cast p2, Lcom/wandoujia/p4/card/models/CardViewModel;

    invoke-static {p1, p2}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    return-void
.end method
