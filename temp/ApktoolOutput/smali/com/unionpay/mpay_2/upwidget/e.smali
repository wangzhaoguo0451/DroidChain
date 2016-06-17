.class public final Lcom/unionpay/mpay_2/upwidget/e;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x10

    const/4 v4, -0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upwidget/e;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/unionpay/mpay_2/upwidget/e;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upwidget/e;->setOrientation(I)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/e;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lccd;->x:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3}, Lcom/unionpay/mpay_2/upwidget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz p2, :cond_1

    sget v1, Lccd;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_1
    iget-object v1, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay_2/upwidget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mpay_2/upwidget/e;
    .locals 3

    new-instance v0, Lcom/unionpay/mpay_2/upwidget/e;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/mpay_2/upwidget/e;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    const v1, -0xffb677

    const/high16 v2, -0x1

    invoke-static {v1, v2}, Lccw;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay_2/upwidget/e;->a(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
