.class public final Lcev;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/UPPinWidget;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/UPPinWidget;)V
    .locals 0

    iput-object p1, p0, Lcev;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcev;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->a(Lcom/unionpay/mpay/widgets/UPPinWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcev;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v1}, Lcom/unionpay/mpay/widgets/UPPinWidget;->a(Lcom/unionpay/mpay/widgets/UPPinWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/unionpay/mpay/widgets/UPPinWidget;->i()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/unionpay/mpay/widgets/UPPinWidget;->i()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcev;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->h()V

    :cond_0
    return-void
.end method
