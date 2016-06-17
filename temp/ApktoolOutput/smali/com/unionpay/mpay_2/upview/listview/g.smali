.class public final Lcom/unionpay/mpay_2/upview/listview/g;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/unionpay/mpay_2/upview/listview/a$b;


# instance fields
.field public a:Lcom/unionpay/mpay_2/upview/listview/a;

.field public b:Lcfz;

.field private c:Lcom/unionpay/mpay_2/upview/listview/d;

.field private d:Lcom/unionpay/mpay_2/upview/listview/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcfz;Lcom/unionpay/mpay_2/upview/listview/g$a;)V
    .locals 9

    const/16 v8, 0x3f8

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->d:Lcom/unionpay/mpay_2/upview/listview/g$a;

    iput-object p2, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iput-object p3, p0, Lcom/unionpay/mpay_2/upview/listview/g;->d:Lcom/unionpay/mpay_2/upview/listview/g$a;

    invoke-static {p1}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v1

    invoke-static {v4}, Lccw;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v7}, Lccw;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lccw;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v2, Lccd;->x:I

    invoke-virtual {v1, v8, v2, v2}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x3f3

    invoke-virtual {v1, v3, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/unionpay/mpay_2/upview/listview/g;->setOrientation(I)V

    iget-object v4, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iput v7, v4, Lcfz;->B:I

    new-instance v4, Lcom/unionpay/mpay_2/upview/listview/d;

    const/16 v5, 0x407

    invoke-virtual {v1, v5, v6, v6}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, p1, v0, v5, v3}, Lcom/unionpay/mpay_2/upview/listview/d;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    iget-object v3, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/unionpay/mpay_2/upview/listview/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    new-instance v3, Lcfe;

    invoke-direct {v3, p0}, Lcfe;-><init>(Lcom/unionpay/mpay_2/upview/listview/g;)V

    invoke-virtual {v0, v3}, Lcom/unionpay/mpay_2/upview/listview/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    sget v3, Lccd;->j:I

    invoke-direct {v0, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    invoke-virtual {p0, v3, v0}, Lcom/unionpay/mpay_2/upview/listview/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/unionpay/mpay_2/upview/listview/a;

    iget-object v3, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget-object v3, v3, Lcfz;->h:Ljava/util/List;

    invoke-direct {v0, p1, v3, p0}, Lcom/unionpay/mpay_2/upview/listview/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/unionpay/mpay_2/upview/listview/a$b;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v8, v2, v2}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    iput-object v0, v1, Lcom/unionpay/mpay_2/upview/listview/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->b()V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/listview/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/listview/g;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay_2/upview/listview/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/listview/g;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/listview/a;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/unionpay/mpay_2/upview/listview/g;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-virtual {v2, v0}, Lcom/unionpay/mpay_2/upview/listview/a;->setVisibility(I)V

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget v2, v2, Lcfz;->B:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay_2/upview/listview/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upview/listview/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iput p1, v0, Lcfz;->B:I

    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/listview/g;->a()V

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/g;->c:Lcom/unionpay/mpay_2/upview/listview/d;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->b:Lcfz;

    iget-object v0, v0, Lcfz;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay_2/upview/listview/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->d:Lcom/unionpay/mpay_2/upview/listview/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/g;->d:Lcom/unionpay/mpay_2/upview/listview/g$a;

    invoke-interface {v0, p1}, Lcom/unionpay/mpay_2/upview/listview/g$a;->f(I)V

    :cond_0
    return-void
.end method
