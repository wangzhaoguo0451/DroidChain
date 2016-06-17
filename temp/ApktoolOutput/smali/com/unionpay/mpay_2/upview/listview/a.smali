.class public final Lcom/unionpay/mpay_2/upview/listview/a;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final b:I


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcfa;

.field private f:I

.field private g:Lcom/unionpay/mpay_2/upview/listview/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lccd;->s:I

    sput v0, Lcom/unionpay/mpay_2/upview/listview/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/unionpay/mpay_2/upview/listview/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;",
            "Lcom/unionpay/mpay_2/upview/listview/a$b;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->c:Landroid/content/Context;

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->e:Lcfa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->f:I

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->g:Lcom/unionpay/mpay_2/upview/listview/a$b;

    iput-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mpay_2/upview/listview/a;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/unionpay/mpay_2/upview/listview/a;->g:Lcom/unionpay/mpay_2/upview/listview/a$b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upview/listview/a;->setOrientation(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/mpay_2/upview/listview/a;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/model/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/model/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/mpay_2/upview/listview/a;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->g:Lcom/unionpay/mpay_2/upview/listview/a$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->g:Lcom/unionpay/mpay_2/upview/listview/a$b;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/unionpay/mpay_2/upview/listview/a$b;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/unionpay/mpay_2/upview/listview/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/mpay_2/upview/listview/a;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->g:Lcom/unionpay/mpay_2/upview/listview/a$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay_2/upview/listview/a;->g:Lcom/unionpay/mpay_2/upview/listview/a$b;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/unionpay/mpay_2/upview/listview/a$b;->b(I)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/unionpay/mpay_2/upview/listview/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, -0x1

    const v8, -0xc0603

    const v7, -0xc06021

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/listview/a;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->e:Lcfa;

    invoke-virtual {v0}, Lcfa;->getCount()I

    move-result v4

    iget v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->f:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/unionpay/mpay_2/upview/listview/a;->b:I

    :goto_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_4

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->e:Lcfa;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v1, v6}, Lcfa;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    new-instance v0, Lcfb;

    invoke-direct {v0, p0}, Lcfb;-><init>(Lcom/unionpay/mpay_2/upview/listview/a;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v6, v5}, Lcom/unionpay/mpay_2/upview/listview/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v4, v9, :cond_1

    invoke-static {v9}, Lccw;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3}, Lccw;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lccw;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->f:I

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x3

    invoke-static {v8, v0}, Lccw;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v0, 0x3

    invoke-static {v7, v0}, Lccw;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, -0x1

    if-ne v2, v0, :cond_3

    const/16 v0, 0xc

    invoke-static {v8, v0}, Lccw;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0xc

    invoke-static {v7, v0}, Lccw;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {v8, v3}, Lccw;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v7, v3}, Lccw;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->e:Lcfa;

    if-nez v0, :cond_0

    new-instance v0, Lcfa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcfa;-><init>(Lcom/unionpay/mpay_2/upview/listview/a;B)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upview/listview/a;->e:Lcfa;

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mpay_2/upview/listview/a;->a()V

    return-void
.end method
