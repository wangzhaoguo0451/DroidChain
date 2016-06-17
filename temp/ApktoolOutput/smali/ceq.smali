.class public final Lceq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/h;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/h;)V
    .locals 0

    iput-object p1, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFocusChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v1}, Lcom/unionpay/mpay/widgets/h;->d(Lcom/unionpay/mpay/widgets/h;)Lcom/unionpay/mpay/widgets/h$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->b(Lcom/unionpay/mpay/widgets/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->d(Lcom/unionpay/mpay/widgets/h;)Lcom/unionpay/mpay/widgets/h$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->d(Lcom/unionpay/mpay/widgets/h;)Lcom/unionpay/mpay/widgets/h$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/unionpay/mpay/widgets/h$a;->a(Z)V

    :cond_1
    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0, p2}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;Z)V

    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->b(Lcom/unionpay/mpay/widgets/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceq;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
