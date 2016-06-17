.class public final Lcom/unionpay/mpay_2/upview/listview/e;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/listview/a$b;


# instance fields
.field private a:Lcom/unionpay/mpay_2/upview/listview/d;

.field private b:Lcom/unionpay/mpay_2/upview/listview/a;

.field private c:Lcfz;

.field private d:Lcom/unionpay/mpay_2/upview/listview/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcfz;Lcom/unionpay/mpay_2/upview/listview/e$a;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    iput-object v6, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    iput-object v6, p0, Lcom/unionpay/mpay_2/upview/listview/e;->c:Lcfz;

    iput-object v6, p0, Lcom/unionpay/mpay_2/upview/listview/e;->d:Lcom/unionpay/mpay_2/upview/listview/e$a;

    iput-object p2, p0, Lcom/unionpay/mpay_2/upview/listview/e;->c:Lcfz;

    iput-object p3, p0, Lcom/unionpay/mpay_2/upview/listview/e;->d:Lcom/unionpay/mpay_2/upview/listview/e$a;

    invoke-static {p1}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    invoke-static {v4}, Lccw;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v7}, Lccw;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lccw;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lccd;->x:I

    const/16 v3, 0x3f8

    invoke-virtual {v0, v3, v2, v2}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x3f3

    invoke-virtual {v0, v2, v5, v5}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/unionpay/mpay_2/upview/listview/e;->setOrientation(I)V

    new-instance v3, Lcom/unionpay/mpay_2/upview/listview/d;

    const/16 v4, 0x407

    invoke-virtual {v0, v4, v5, v5}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/unionpay/mpay_2/upview/listview/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->setId(I)V

    invoke-virtual {p0, v7}, Lcom/unionpay/mpay_2/upview/listview/e;->c(I)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    new-instance v1, Lcfd;

    invoke-direct {v1, p0}, Lcfd;-><init>(Lcom/unionpay/mpay_2/upview/listview/e;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    sget v1, Lccd;->s:I

    invoke-direct {v0, v5, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay_2/upview/listview/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/unionpay/mpay_2/upview/listview/a;

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/e;->c:Lcfz;

    iget-object v1, v1, Lcfz;->O:Ljava/util/List;

    invoke-direct {v0, p1, v1, p0}, Lcom/unionpay/mpay_2/upview/listview/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/unionpay/mpay_2/upview/listview/a$b;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    iput-object v6, v0, Lcom/unionpay/mpay_2/upview/listview/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->b()V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/listview/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/listview/e;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {v2, v0}, Lcom/unionpay/mpay_2/upview/listview/a;->setVisibility(I)V

    iget-object v2, p0, Lcom/unionpay/mpay_2/upview/listview/e;->d:Lcom/unionpay/mpay_2/upview/listview/e$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unionpay/mpay_2/upview/listview/e;->d:Lcom/unionpay/mpay_2/upview/listview/e$a;

    iget-object v3, p0, Lcom/unionpay/mpay_2/upview/listview/e;->b:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-interface {v2, v3}, Lcom/unionpay/mpay_2/upview/listview/e$a;->a(Landroid/view/View;)V

    :cond_2
    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->d:Lcom/unionpay/mpay_2/upview/listview/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->d:Lcom/unionpay/mpay_2/upview/listview/e$a;

    invoke-interface {v0, p1}, Lcom/unionpay/mpay_2/upview/listview/e$a;->f(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->c:Lcfz;

    iget-object v0, v0, Lcfz;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay_2/upview/listview/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final getId()I
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/e;->a:Lcom/unionpay/mpay_2/upview/listview/d;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/d;->getId()I

    move-result v0

    return v0
.end method
