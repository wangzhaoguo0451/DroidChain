.class public final Ldnk;
.super Lhic;
.source "GrandCardPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lhic;-><init>()V

    .line 129
    return-void
.end method

.method private static a(Lcom/wandoujia/ripple_framework/model/Model;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-static {p0}, Lg;->a(Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    sget-object v1, Ldnm;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    if-eqz p1, :cond_3

    const v0, 0x7f0202ce

    :goto_0
    return v0

    .line 127
    :pswitch_0
    if-eqz p1, :cond_1

    const v0, 0x7f020306

    goto :goto_0

    :cond_1
    const v0, 0x7f020305

    goto :goto_0

    .line 129
    :pswitch_1
    if-eqz p1, :cond_2

    const v0, 0x7f02026e

    goto :goto_0

    :cond_2
    const v0, 0x7f02026d

    goto :goto_0

    .line 132
    :cond_3
    const v0, 0x7f0202cd

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0c0349

    const v6, 0x7f0c0346

    const v5, 0x7f0c0348

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 31
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v1, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    .line 33
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 36
    :cond_0
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 39
    :cond_1
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0345

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 44
    :goto_0
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 45
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 52
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    :cond_3
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 61
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 62
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 63
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0144

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 64
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0144

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 65
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0347

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v4}, Ldnk;->a(Lcom/wandoujia/ripple_framework/model/Model;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_2
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 77
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 78
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0347

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 116
    :goto_3
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    invoke-virtual {v0}, Leri;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->w(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v1

    invoke-virtual {v1}, Leri;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v2, v0, v1

    .line 119
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v3

    iget-object v0, v3, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v3, Leri;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, v3, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_4
    return-void

    .line 41
    :cond_5
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0345

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    goto/16 :goto_0

    .line 55
    :cond_6
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    goto/16 :goto_1

    .line 67
    :cond_7
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 68
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0158

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 69
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 70
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0145

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 71
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0145

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 72
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0347

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ldnk;->a(Lcom/wandoujia/ripple_framework/model/Model;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 84
    :cond_8
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 86
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    .line 88
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 89
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v5}, Leri;->b(I)Leri;

    move-result-object v1

    invoke-virtual {v1, v0}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 91
    :cond_a
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0347

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    .line 98
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/wandoujia/ripple_framework/action/ActionType;->DESIGN_AWARD:Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/action/ActionType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_c

    .line 100
    iget-object v1, v0, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 101
    invoke-virtual {p0}, Ldnk;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v6}, Leri;->b(I)Leri;

    move-result-object v1

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 103
    :cond_b
    invoke-virtual {p0}, Ldnk;->d()Lerf;

    move-result-object v0

    new-instance v1, Ldnl;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-direct {v1, v2, v3}, Ldnl;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    goto/16 :goto_3

    .line 112
    :cond_c
    invoke-virtual {p0}, Ldnk;->d()Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    goto/16 :goto_3
.end method
