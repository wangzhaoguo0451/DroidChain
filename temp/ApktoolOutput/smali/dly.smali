.class public final Ldly;
.super Lhic;
.source "DetailImagePresenter.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method public static a(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 121
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 122
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 135
    :goto_0
    return-object v1

    .line 128
    :cond_1
    const/16 v2, 0xa0

    if-le p0, v2, :cond_2

    .line 129
    mul-int/2addr v0, p1

    int-to-double v2, v0

    int-to-double v4, p0

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 131
    :cond_2
    mul-int v2, p1, v0

    int-to-double v2, v2

    mul-int/lit8 v4, p0, 0x3

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 133
    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/widget/ImageView;Lcom/wandoujia/api/proto/Image;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 101
    iput-boolean v4, p0, Ldly;->a:Z

    .line 102
    iget-object v0, p2, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcom/wandoujia/api/proto/Image;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    :goto_0
    new-instance v0, Lhma;

    invoke-direct {v0}, Lhma;-><init>()V

    iget-object v2, p2, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    const v3, 0x7f0a0043

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;IZLhmh;)V

    .line 118
    return-void

    .line 102
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 103
    :cond_1
    new-instance v5, Lhmh;

    invoke-direct {v5}, Lhmh;-><init>()V

    goto :goto_1
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wandoujia/api/proto/Image;

    .line 45
    invoke-virtual {p0}, Ldly;->e()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 46
    iput-boolean v1, p0, Ldly;->a:Z

    .line 48
    iget-object v0, v4, Lcom/wandoujia/api/proto/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v4, Lcom/wandoujia/api/proto/Image;->height:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ldly;->a(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p0, v3, v4}, Ldly;->a(Landroid/widget/ImageView;Lcom/wandoujia/api/proto/Image;)V

    .line 51
    invoke-virtual {p0}, Ldly;->e()Landroid/view/View;

    move-result-object v6

    new-instance v0, Ldlz;

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ldlz;-><init>(Ldly;Lcom/wandoujia/ripple_framework/model/Model;Landroid/widget/ImageView;Lcom/wandoujia/api/proto/Image;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
