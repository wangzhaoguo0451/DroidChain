.class public final Lcew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/UPPinWidget;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/UPPinWidget;)V
    .locals 0

    iput-object p1, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v1}, Lcom/unionpay/mpay/widgets/UPPinWidget;->b(Lcom/unionpay/mpay/widgets/UPPinWidget;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->c(Lcom/unionpay/mpay/widgets/UPPinWidget;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x14

    if-ne v0, v2, :cond_2

    if-lez v1, :cond_0

    iget-object v0, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v2, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v2}, Lcom/unionpay/mpay/widgets/UPPinWidget;->d(Lcom/unionpay/mpay/widgets/UPPinWidget;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unionpay/mpay/widgets/UPPinWidget;->deleteOnce(I)V

    iget-object v0, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->e(Lcom/unionpay/mpay/widgets/UPPinWidget;)I

    iget-object v0, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v0, v0, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v1, v1, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/widgets/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v1, v1, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/widgets/h;->b(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v2}, Lcom/unionpay/mpay/widgets/UPPinWidget;->b(Lcom/unionpay/mpay/widgets/UPPinWidget;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v3, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v3}, Lcom/unionpay/mpay/widgets/UPPinWidget;->d(Lcom/unionpay/mpay/widgets/UPPinWidget;)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->appendOnce(ILjava/lang/String;)V

    if-nez v1, :cond_3

    const-string v0, "*"

    :goto_1
    iget-object v1, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v1, v1, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/widgets/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v1, v1, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/unionpay/mpay/widgets/h;->b(I)V

    iget-object v0, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/UPPinWidget;->f(Lcom/unionpay/mpay/widgets/UPPinWidget;)I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcew;->a:Lcom/unionpay/mpay/widgets/UPPinWidget;

    iget-object v1, v1, Lcom/unionpay/mpay/widgets/UPPinWidget;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {v1}, Lcom/unionpay/mpay/widgets/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
