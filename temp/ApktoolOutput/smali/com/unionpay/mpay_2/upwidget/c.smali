.class public final Lcom/unionpay/mpay_2/upwidget/c;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Landroid/widget/CheckBox;

.field private b:Landroid/content/Context;

.field private c:Lccn;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->c:Lccn;

    iput-object p1, p0, Lcom/unionpay/mpay_2/upwidget/c;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lccn;->a(Landroid/content/Context;)Lccn;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->c:Lccn;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unionpay/mpay_2/upwidget/c;->setOrientation(I)V

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/unionpay/mpay_2/upwidget/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v1

    sget v2, Lccd;->b:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->c:Lccn;

    const/16 v1, 0x7d4

    sget v2, Lccd;->p:I

    sget v3, Lccd;->p:I

    invoke-virtual {v0, v1, v2, v3}, Lccn;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mpay_2/upwidget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/unionpay/mpay_2/upwidget/c;
    .locals 1

    new-instance v0, Lcom/unionpay/mpay_2/upwidget/c;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/mpay_2/upwidget/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
