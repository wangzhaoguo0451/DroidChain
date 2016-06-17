.class public final Lffd;
.super Landroid/widget/BaseAdapter;
.source "PostContentImageAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/GridView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/GridView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lffd;->b:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lffd;->a:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lffd;->c:Landroid/widget/GridView;

    .line 32
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lffd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lffd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lffd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lffd;->b:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lffd;->c:Landroid/widget/GridView;

    invoke-static {v1}, Ld;->a(Landroid/widget/GridView;)I

    move-result v1

    iget-object v2, p0, Lffd;->c:Landroid/widget/GridView;

    invoke-static {v2}, Ld;->a(Landroid/widget/GridView;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const v0, 0x7f020208

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :goto_1
    return-object p2

    .line 58
    :cond_1
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0

    .line 60
    :cond_2
    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/wandoujia/image/view/AsyncImageView;

    if-nez v0, :cond_4

    :cond_3
    new-instance p2, Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p0, Lffd;->b:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lffd;->c:Landroid/widget/GridView;

    invoke-static {v1}, Ld;->a(Landroid/widget/GridView;)I

    move-result v1

    iget-object v2, p0, Lffd;->c:Landroid/widget/GridView;

    invoke-static {v2}, Ld;->a(Landroid/widget/GridView;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v0, p0, Lffd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0, v3, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    check-cast p2, Lcom/wandoujia/image/view/AsyncImageView;

    goto :goto_2
.end method
