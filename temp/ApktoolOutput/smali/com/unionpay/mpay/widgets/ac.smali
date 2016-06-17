.class public final Lcom/unionpay/mpay/widgets/ac;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lccn;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mpay/widgets/ac;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->a:Lccn;

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->a:Lccn;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay/widgets/ac;->setBackgroundColor(I)V

    invoke-virtual {p0, v5}, Lcom/unionpay/mpay/widgets/ac;->setOrientation(I)V

    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->b:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lccd;->y:I

    sget v2, Lccd;->y:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v1, Lccd;->a:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ac;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay/widgets/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ac;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->a:Lccn;

    const/16 v2, 0x40b

    invoke-virtual {v0, v2, v4, v4}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lccd;->u:I

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ac;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay/widgets/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5}, Lcom/unionpay/mpay/widgets/ac;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->a:Lccn;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2, v2}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay/widgets/ac;->a:Lccn;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, v2, v2}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ac;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/mpay/widgets/ac;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
