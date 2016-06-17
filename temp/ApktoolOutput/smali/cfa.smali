.class public final Lcfa;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/unionpay/mpay_2/upview/listview/a;


# direct methods
.method private constructor <init>(Lcom/unionpay/mpay_2/upview/listview/a;)V
    .locals 0

    iput-object p1, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unionpay/mpay_2/upview/listview/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcfa;-><init>(Lcom/unionpay/mpay_2/upview/listview/a;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v1}, Lcom/unionpay/mpay_2/upview/listview/a;->a(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v1}, Lcom/unionpay/mpay_2/upview/listview/a;->a(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->a(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/high16 v4, 0x6

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_0
    if-nez p2, :cond_4

    iget-object v0, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->a(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->d()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->b(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->b(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    new-instance v2, Lcom/unionpay/mpay_2/upview/listview/d;

    iget-object v3, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v3}, Lcom/unionpay/mpay_2/upview/listview/a;->c(Lcom/unionpay/mpay_2/upview/listview/a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Lcom/unionpay/mpay_2/upview/listview/d;->setDescendantFocusability(I)V

    move-object v0, v2

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v1, p1}, Lcom/unionpay/mpay_2/upview/listview/a;->a(Lcom/unionpay/mpay_2/upview/listview/a;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->a(Ljava/lang/String;)V

    new-instance v1, Lcfc;

    invoke-direct {v1, p0}, Lcfc;-><init>(Lcfa;)V

    iget-object v3, v0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, v0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/unionpay/mpay_2/upview/listview/d;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-object v2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, p2

    check-cast v0, Lcom/unionpay/mpay_2/upview/listview/d;

    move-object v2, p2

    goto :goto_1
.end method
